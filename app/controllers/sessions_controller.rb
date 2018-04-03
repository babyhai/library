class SessionsController < ApplicationController

  def new
  end

  def create
    if user = login(params[:email], params[:password])
      binding.pry

      flash[:notice] = "登录成功！"
      redirect_to  root_path

    else
      flash[:notice] = "用户名或密码不正确"
      redirect_to  new_session_path
    end
  end

end
