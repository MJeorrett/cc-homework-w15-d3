class ShowsController < ApplicationController

  def index
    shows = Show.all
    render json: shows.as_json(
      include: [
        { favourited_by_users: { except: :id } }
      ]
    )
  end

  def show
    show = Show.find params[:id]
    render json: show
  end

end
