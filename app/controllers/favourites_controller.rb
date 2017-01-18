class FavouritesController < ApplicationController

  def index
    favourties = Favourite.all
    render json: favourties
  end

  def show
    favourite = Favourite.find params[:id]
    render json: favourite
  end

end
