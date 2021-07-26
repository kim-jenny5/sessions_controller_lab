class SessionsController < ApplicationController
  def new
  end

  def create
    if params[:name].nil? || params[:name].empty?
      # return redirect_to controller: 'sessions', action: 'new'
      redirect_to login_path
    elsif params[:name]
      session[:name] = params[:name]
      redirect_to root_path
    end
#     return redirect_to(controller: 'sessions',
#       action: 'new') if !params[:name] || params[:name].empty?
# session[:name] = params[:name]
# redirect_to controller: 'application', action: 'hello'
  end

  def destroy
    session.delete :name
    redirect_to login_path
  end
end
