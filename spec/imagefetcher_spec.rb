require "spec_helper"

describe Imagefetcher do
  let(:valid_url) { 'https://moikrug.ru/vacancies/1000031431' }

  it 'return url images collection' do
    collection = VCR.use_cassette('valid_page') do
      Imagefetcher::Fetcher.new.get_images(valid_url)
    end
    expect(collection).to be_a Array
    expect(collection).to include(/\.png/)
  end
end
