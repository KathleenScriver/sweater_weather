require "rails_helper"

describe "Forecast API" do
  it 'should return weather info based on city,state' do
    user_location = 'denver,co'

    get "/api/v1/forecast", params: {location: user_location}

    raw_data = JSON.parse(response.body, symbolize_names: true)

    expect(raw_data).to have_key(:data)
    expect(raw_data[:data]).to have_key(:attributes)
    expect(raw_data[:data][:attributes]).to have_key(:current_weather)
    expect(raw_data[:data][:attributes]).to have_key(:hourly_temps)
    expect(raw_data[:data][:attributes]).to have_key(:daily_weather)
  end
end
