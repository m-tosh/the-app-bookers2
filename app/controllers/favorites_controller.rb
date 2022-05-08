class FavoritesController < ApplicationController
  def create
    Favorite.create(favorite_params)
    redirect_to books_path
  end

  def destroy
    if favorite = Favorite.find_by(favorite_params)
      favorite.destroy
    end
    redirect_to books_path
  end

  private
  def favorite_params
    { book_id: params[:book_id], user_id: current_user.id }
  end
end
