class SessionsController < ApplicationController
  def new
  end

  def create
    if params[:name] == nil
      redirect_to sessions_new_path
    elsif !!params[:name].present? == false
      redirect_to sessions_new_path
    else
      session[:name] = params[:name]
      redirect_to '/'
    end
  end #end create method

  def destroy
    # byebug
    if session[:name] == nil
      redirect_to root_path
    else
      session.delete :name
      redirect_to root_path
    end
  end #end destroy method
end #end SessionsController class
