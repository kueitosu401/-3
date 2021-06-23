class UsersController < ApplicationController
  def show
    @user = User.all
    @books = Book.all
    @book = Book.new
    @users = @Users_path
    @user = User.find(params[:id])
    # @user = @Users.page(params[:page]).reverse_order
  end

 def new
  @user = List.new
  @book = Book.new

 end

  def create
    @book = Books.new(books_params)
    @books.user_id = current_user.id
    @books.save
    redirect_to book_path(@books)
  end

  def index

    @ser_id = current_user.id
   @users = User.all



  end

   def edit
    @book = @Books_path
    @user = User.find(params[:id])
    @user = @User_path
    @books.save
    redirect_to @books_path
   end

  def update
    @book = @Books_path
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(@user.id)

  end

  def destroy
    @books = Book.find(params[:id])
    @books.destroy
    redirect_to book_path
  end

    private

  def user_params
    params.require(:user).permit(:edit, :update, :destroy, :show, :page, :index)
  end
end
