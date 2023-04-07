class PlayerDetailsController < ApplicationController
  def new; end

  def create
    player_name = params[:player_name]
    OsrsApiService.player_data(player_name)

    # redirect with player name params
    redirect_to root_path(player_name:)
  end
end
