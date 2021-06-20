class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @post_images = @user.post_images.page(params[:page]).reverse_order
  end

 def new
  @user = List.new
  # book.save
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
    @post_image = PostImage.find(params[:id])
    @post_image.destroy
    redirect_to post_images_path
  end
  
    private

  def user_params
    params.require(:user).permit(:name, :profile_image)
  end

end
