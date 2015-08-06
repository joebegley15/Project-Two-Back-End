class GamesController < ApplicationController
  def create
    game = current_user.games.new(game_params)
    if game.save
      render json: game, status: 201
    else
      render error: :unprocessable_entity
    end
  end

  def update
  end

  private

  def game_params
    params.require(:game).permit(:user_dice, :cpu_dice, :player_score, :cpu_score)
  end
end
