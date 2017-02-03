require 'imagefetcher/version'
require 'imagefetcher/parser'
require 'imagefetcher/client'

module Imagefetcher
  class Fetcher
    def get_images(url)
      Parser.new.parse_page(url)
    end
  end
end
