class Api::V1::BackgroundController < ApplicationController
  def index
    render json: BackgroundFacade.new(params[:location])
  end
end
