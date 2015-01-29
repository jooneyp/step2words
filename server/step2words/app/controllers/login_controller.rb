class LoginController < ApplicationController
  def index
    redirect_to "http://step2words.com"
  end
  
  def create
    if params[:act] == "userLogin"
      @user = User.find_by email: params[:email]
      if @user.nil?
        render json: { "status" => "0" }.to_json
      elsif @user.password != params[:password]
        @user.status = 0
        render json: @user, only: [:status]
      elsif
        @user.status = 1
        render json: @user
      end
    else
      redirect_to "http://step2words.com"
    end
  end
end
