class SessionsController < ApplicationController
  def current_user

  end
  def new
    redirect_to '/login'
  end
  def create
    if !params[:name].present?
      redirect_to '/login'
    else
      session[:name] = params[:name]
      redirect_to '/'
    end
  end
  def destroy
    if session[:name]
      session.delete :name
    end
    redirect_to '/'
  end
end
