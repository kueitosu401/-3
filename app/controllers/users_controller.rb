class UsersController < ApplicationController
  def show
    @user = User.all
    @book = @Book_path
    @users = @Users_path
    @users = User.find(params[:id])
    @user = @Users.page(params[:page]).reverse_order
  end

 def new
  @user = List.new
  # book.save
 end

  def index
    @user = Book.all
    @user = Book.new
  end

   def edit
    @user = User.find(params[:id])
   end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(@user.id)
  end

  def destroy
    @user = Book.find(params[:id])
    @book.destroy
    redirect_to post_images_path
  end

    private

  def user_params
    params.require(:user).permit(:edit, :update, :destroy, :show, :page)
  end

end
