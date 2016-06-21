class LogInController < ApplicationController
  def check
    @userinfo = UserInfo.find_by(username: params[:login_username]).nil?
    if params[:login_username] == @userinfo.username && params[:login_psswd] == @userinfo.password
      render 'registration.html.erb'
    else
      render 'index.html.erb'
    end
  end
end
