class UsersController < ApplicationController
  def edit
    @user = User.find(params[:id])

  end

  def show
    @user = current_user
    @book = Book.new
    @books = Book.all
    
  end
  
  def index
    @users = User.all
    @user = current_user
  end
  
  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(@user.id)
  end
  
  private
  
  def user_params
    params.require(:user).permit(:name, :introduction, :image )
  end
end
