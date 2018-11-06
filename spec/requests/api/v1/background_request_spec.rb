require "rails_helper"

describe "Background API" do
  it 'should return background image of location' do
    location = 'denver,co'

    get "/api/v1/background?location=#{location}"

    image_info = JSON.parse(response.body, symbolize_names: true)[:data][:attributes]

    expect(image_info).to have_key(:location_image)
    expect(image_info[:location_image]).to include('.jpg')
  end
end
