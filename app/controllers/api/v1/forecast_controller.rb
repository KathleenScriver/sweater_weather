class Api::V1::ForecastController < ApplicationController
  def index
    render ForecastFacadeSerializer.new(ForecastFacade.new(params[:location])).serialized_json
  end
end
