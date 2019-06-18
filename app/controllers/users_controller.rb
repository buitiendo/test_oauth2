class UsersController < ApplicationController
  before_action :authenticate_account
  def new
  end

  def index
    @users = User.all
  end

  def import
    User.import(params[:file])
    redirect_to users_path, notice: "Users imported."
  end

  private
  
  def authenticate_account
    return if current_account.present?
    flash[:danger] =  "Bạn chưa đăng nhập"
    redirect_to new_account_session_path
  end
end
