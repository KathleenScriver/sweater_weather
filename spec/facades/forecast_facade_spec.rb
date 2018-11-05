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

    context '#daily_weather' do
      it 'should return daily weather for upcoming week' do
        expect(subject.daily_weather.first).to be_a(DailyWeather)
      end
    end
  end
end
