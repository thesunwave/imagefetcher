require 'spec_helper'

describe Imagefetcher do
  context 'with valid url' do
    let(:valid_url) { 'https://moikrug.ru/vacancies/1000031431' }

    it 'returns page' do
      VCR.use_cassette('valid_page') do
        page = Imagefetcher::Client.get_page(valid_url)
        expect(page).not_to be_nil
      end
    end
  end

  context 'with invalid url' do
    let(:invalid_url) { 'http://invalid.kek' }

    it 'returns exception' do
      expect do
        VCR.use_cassette('invalid_page') do
          Imagefetcher::Client.get_page(invalid_url)
        end
      end.to raise_error SocketError
    end
  end
end
