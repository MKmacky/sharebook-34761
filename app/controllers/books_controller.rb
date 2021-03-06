class BooksController < ApplicationController
  before_action :set_book, only: [:edit, :show]
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  before_action :move_to_index, only: :edit

  def index
    @books = Book.all
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @comment = Comment.new
    @comments = @book.comments.includes(:user)
  end

  def edit
  end

  def update
    book = Book.find(params[:id])
    if book.update(book_params)
      redirect_to book_path(book.id)
    else
      render :edit
    end
  end

  def destroy
    book = Book.find(params[:id])
    if book.destroy
      redirect_to root_path
    end
  end
  
  private

  def book_params
    params.require(:book).permit(:title, :image, :genre_id, :content, :recommend).merge(user_id: current_user.id)
  end

  def set_book
    @book = Book.find(params[:id])
  end

  def move_to_index
    unless user_signed_in? && current_user.id == @book.user_id
      redirect_to action: :index
    end
  end
  
end
