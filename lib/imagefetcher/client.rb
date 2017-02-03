require 'httparty'

module Imagefetcher
  class Client
    class << self
      def get_page(url)
        HTTParty.get(url).body
      end
    end
  end
end
