class GamesController < ApplicationController

  before_action :findGame, only: [:show, :edit, :update, :destroy]

  def index
      @games = Game.all
  end

  def new
    @game = Game.new
  end

  def create
    @game = Game.create get_params
    flash[:notice] = "game created successfully"
    redirect_to root_path
  end

  def show
  end

  def edit
  end

  def update
    @game.update get_params
    flash[:notice] = "game updated successfully"
    redirect_to root_path
  end

  def destroy
    @game.destroy
    flash[:notice] = "game deleted successfully"
    redirect_to root_path
  end

  private

  def get_params
    params.require(:game).permit(:title, :description, :img, :age, :linkOfficial, :linkNoOfficial)
  end

  def findGame
    @game = Game.find(params[:id])
  end

  #def findGameByTitle
  #  @games = Game.where("title LIKE ?", "%" + "ill" + "%")
  #end
end
