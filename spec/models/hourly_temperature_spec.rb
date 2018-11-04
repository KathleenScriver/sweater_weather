require "rails_helper"

describe HourlyTemperature do

  subject {HourlyTemperature.new(1541300400, 41.3)}

  it 'should have time and temp attributes' do
    expect(subject.time).to eq(" 9 PM")
    expect(subject.temperature).to eq(41.3)
  end
end
