require "rails_helper"

describe "Forecast API" do
  it 'should return lat and long for city and state in query params' do
    user_location = denver,co

    get "/api/v1/forecast", params: {location: user_location}

    raw_data = JSON.parse(response.body, symbolize_names: true)
    data = raw_data[:data][:attributes][:latitude]

    expect(data).to have_key(:latitude)
    expect(data).to have_key(:longitude)
  end
end
