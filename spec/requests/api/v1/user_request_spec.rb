require 'rails_helper'

describe "Users API" do
  scenario 'user can post to create account' do
    user_data = {
      email: 'kat@email.com',
      password: 'test',
      password_confirmation: 'test'
      }

      post "/api/v1/users", params: user_data

      user_response = JSON.parse(response.body, symbolize_names: true)

      expect(response.status).to eq(200)
      expect(user_response).to have_key(:api_key)
      expect(User.last.email).to eq('kat@email.com')
  end

  scenario 'error if email already exists' do
    user = create(:user)
    user_data = {
      email: user.email,
      password: 'test',
      password_confirmation: 'test'
    }

    post '/api/v1/users', params: user_data

    error = JSON.parse(response.body)

    expect(response.status).to eq(401)
    expect(error["message"]).to eq("Error")
  end
end
