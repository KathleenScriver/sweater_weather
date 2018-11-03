require "rails_helper"

describe GeocoderService do
  location = 'denver,co'
  subject { GeocoderService.new(location) }

  context 'instance methods' do
    context '#geometry' do
      it 'should return geometry data for lat and long' do
        expect(subject.geometry).to have_key(:lat)
        expect(subject.geometry).to have_key(:lng)
      end
    end
  end
end
