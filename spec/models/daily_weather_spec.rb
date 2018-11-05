require "rails_helper"

describe DailyWeather do

  attributes = {
                time: 1541300400,
                icon: 'partly-sunny',
                precipProbability: 0.38,
                temperatureHigh: 55.0,
                temperatureLow: 39.7
               }

  subject { DailyWeather.new(attributes) }

  it 'exists with attributes' do
    expect(subject.day).to eq('Saturday')
    expect(subject.icon).to eq('partly-sunny')
    expect(subject.chance_of_rain).to eq('38%')
    expect(subject.temp_high).to eq(55.0)
    expect(subject.temp_low).to eq(39.7)
  end
end
