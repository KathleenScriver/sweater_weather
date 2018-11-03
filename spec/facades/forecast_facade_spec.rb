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
    context '#get_lat' do
      it 'should return latitude' do
        denver_lat = 39.7392358

        expect(subject.get_lat).to eq(denver_lat)
      end
    end

    context '#get_lng' do
      it 'should return longitude' do
        denver_lng = -104.990251

        expect(subject.get_lng).to eq(denver_lng)
      end
    end
  end
end
