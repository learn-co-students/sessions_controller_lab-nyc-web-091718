class SesionsController < ApplicationController
  def new
  end

  def create
      if session[:name] = params[:name]
        redirect_to controller: 'application', action: 'hello'
      else
        !params[:name] || params[:name].empty?
         redirect_to(controller: 'sessions', action: 'new')
      end
  end

  def destroy
    session.delete :name
    redirect_to(controller: 'sessions', action: 'new')
  end
end #EndClasss
