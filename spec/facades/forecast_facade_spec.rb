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
    context '#current_weather' do
      it 'should return current weather object' do
        expect(subject.current_weather).to be_a(CurrentWeather)
      end
    end

    context '#hourly_temps' do
      it 'should return Hourly Temperature objects' do
        expect(subject.hourly_temps.first).to be_a(HourlyTemperature)
      end
    end
  end
end
