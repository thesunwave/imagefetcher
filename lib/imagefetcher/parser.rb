require 'nokogiri'

module Imagefetcher
  class Parser

    def parse_page(url)
      page = Imagefetcher::Client.get_page(url)
      fetch_images_url(page)
    end

    private

    def fetch_images_url(page)
      document = Nokogiri::HTML(page)
      document.xpath('//img').map { |img| img['src'] }
    end

  end
end
