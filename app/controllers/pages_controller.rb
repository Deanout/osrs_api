class PagesController < ApplicationController
  def home
    if params[:player_name]
      player_data = PlayerDetail.where(player_name: params[:player_name])
    elsif current_user&.player_name
      player_data = PlayerDetail.where(player_name: current_user.player_name)
    end
    render :home, locals: { player_data: }
  end
end
