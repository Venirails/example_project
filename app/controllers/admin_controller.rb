class AdminController < ApplicationController
  def login
    if request.post?
      if params[:username] == "admin" && params[:password] == "nimda"
        session[:admin] = "admin"
        redirect_to books_url
      else
        flash[:notice] = "Invalid username/password"
        render :action=>:login
      end
    end
  end
  def logout
    session[:admin] = nil
    flash[:notice] = "you are logged out"
    redirect_to :action=>:login
  end
end
