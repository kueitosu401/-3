class BooksController < ApplicationController
  def new
    @post_image = Book.new
  end

  def create
    @post_image = Book.new(book_params)
    @post_image.user_id = current_user.id
    @post_image.save
    redirect_to book_path(@post_image)
  end

  def index
    @post_images = Book.all
  end

  def show
    @post_image =  Book.find(params[:id])
  end



    private

  def book_params
    params.require(:book).permit(:title, :body)
  end
end