class BooksController < ApplicationController
  def new
    @books = Book.new
  end

  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    @book.save
    redirect_to book_path(@book)
  end

  def index
    @books = Book.all
  end

  def show
    @books =  Book.find(params[:id])
  end

  def destroy
    @books = Book.find(params[:id])
    @books.destroy
    redirect_to book_path
  end


    private

  def book_params
    params.require(:book).permit(:title, :body)
  end
end