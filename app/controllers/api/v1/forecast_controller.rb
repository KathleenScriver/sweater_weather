class Api::V1::ForecastController < ApplicationController
  def index
    render json: ForecastFacadeSerializer.new(ForecastFacade.new(params[:location])).serializable_hash
  end
end
