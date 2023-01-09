class FavoritesController < ApplicationController

  def create
     @book = Favorite.new(user_id: current_user.id, book_id: params[:book_id])
     @book.save
     redirect_to request.referer
  end

  def destroy
    @book = Favorite.find_by(user_id: current_user.id, book_id: params[:book_id])
    @book.destroy
    redirect_to request.referer
  end
end
