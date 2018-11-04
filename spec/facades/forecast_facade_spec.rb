require "rails_helper"

describe ForecastFacade do

  subject { ForecastFacade.new("denver,co")  }

  it 'exists' do
    expect(subject).to be_a(ForecastFacade)
  end

  context 'attritubes' do
    it 'has location' do
      expect(subject.location).to eq('denver,co')
    end
  end

  context 'instance methods' do
    context '#coordinates' do
      it 'should return latitude and longitude' do
        denver_lat = 39.7392358
        denver_lng = -104.990251

        expect(subject.coordinates[:lat]).to eq(denver_lat)
        expect(subject.coordinates[:lng]).to eq(denver_lng)
      end
    end
  end
end
