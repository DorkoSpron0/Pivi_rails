class SearchController < ApplicationController
  before_action :getGameByParams, only: [:index]

  def index
    if @games == []
      flash[:alert] = "Mano no existen con ese nombre"
    end
  end

  private

  def getGameByParams
    @games = Game.where("title LIKE ?", "%" + "#{params[:title]}" + "%")
  end

end
