class Api::V1::BackgroundController < ApplicationController
  def index
    render json: BackgroundFacadeSerializer.new(BackgroundFacade.new(params[:location])).serializable_hash
  end
end
