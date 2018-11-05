require "rails_helper"

describe "Background API" do
  it 'should return background image of location' do
    location = 'denver,co'

    get "/api/v1/background?location=#{location}"

    image_info = JSON.parse(response.body, symbolize_names: true)[:data]

    expect(image_info).to eq("link")
  end
end
