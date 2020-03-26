class FavoritesController < ApplicationController
  def create
    favorite = current_user.favorites.build(poketm_id: params[:poketm_id])
    favorite.save
    redirect_to poketms_path
  end

  def destroy
    favorite = Favorite.find_by(poketm_id: params[:poketm_id], user_id: current_user.id)
    favorite.destroy
    redirect_to poketms_path
  end
end
