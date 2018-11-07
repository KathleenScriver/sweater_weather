class Api::V1::UsersController < ApplicationController
  def create
    user = User.new(user_params)
    if user.save
     render json: user.api_key
   else
     render json: {message: "Error"}, status: 401
   end
  end

  private

  def user_params
    params.permit(:email, :password, :password_confirmation)
  end
end
