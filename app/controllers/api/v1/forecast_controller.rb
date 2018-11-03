class Api::V1::ForecastController < ApplicationController
  def index
    render ForecastSerializer.new(ForecastFacade.new(params[:location])).serialized_json
  end
end
