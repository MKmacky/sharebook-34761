class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @name = @user.name
    @books = @user.books
  end
  
end
