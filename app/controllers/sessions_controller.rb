class SessionsController < ApplicationController
  def new
  end

  def create
  	# cherche s'il existe un utilisateur en base avec l’e-mail
  		user = User.find_by_email(params[:email])
    	if user && user.authenticate(params[:password])
    # redirige où tu veux, avec un flash ou pas
      		session[:user_id] = user.id
      		redirect_to root_url, notice: "Logged in!"
    	else
      		flash.now[:alert] = "Email or password is invalid"
      		render "new"
    end
  end

  def destroy
  	session.delete(:user_id)
  	redirect_to ("/")
  end
end
