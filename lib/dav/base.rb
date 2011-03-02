require 'zlib'

module DAV
  class Base < Struct.new(:request, :uri)
    include DAV

    include Traversing
    include Actions
    include Convenience

    alias get body

    extend Callbacks
    define_callbacks :get, :put, :mkcol, :delete, :copy, :move
    define_callbacks :propfind, :proppatch, :lock, :unlock
    define_callbacks :search

    RootRequest = Struct.new :url, :body

    def self.mkroot(domain)
      root = new RootRequest.new("http://#{ domain }/")
      DAV::Responder.new { |r| root.mkcol r } unless root.collection?

      root
    end

    def self.new(request, uri = nil)
      uri ||= begin
        url = Convenience.transcode(request.url) do |url|
          Convenience.to_utf8 url
        end

        URI.parse url
      end

      super request, uri
    end

    def properties
      @properties ||= Properties.new self
    end
    def ==(other)
      Resource === other and uri == other.uri
    end
    def id
      path = uri.path.split '/'
      path.shift if path.first and path.first.empty?
      path.pop if path.last and path.last.empty?

      @id ||= "#{ uri.host }/#{ path.join '/' }"
    end

    protected

      def checksum
        Zlib.crc32 body.read
      end

  end
end
