require "rails_helper"

describe CurrentWeather do
  data = {
    time: 1541300400,
    summary: 'Sunny',
    temperature: 41.1,
    apparentTemperature: 39.5,
    humidity: 0.57,
    visibility: 4.54,
    uvIndex: 0
  }
  subject {CurrentWeather.new(data)}

  it 'is created with weather attributes' do
    expect(subject.time).to eq(" 9:00 PM")
    expect(subject.summary).to eq("Sunny")
    expect(subject.temperature).to eq(41.1)
    expect(subject.feels_like).to eq(39.5)
    expect(subject.humidity).to eq(0.57)
    expect(subject.visibility).to eq(4.54)
    expect(subject.uv_index).to eq(0)
  end
end
