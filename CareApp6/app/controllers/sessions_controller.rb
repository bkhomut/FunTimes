class SessionsController < ApplicationController

  def destroy
    session["user_id"] = nil
    redirect_to "/", notice: "You've successfully logged out."
  end

  def new
  end

  def create
    user = User.find_by_email(params["email"])

    if user && user.authenticate(params["password"])
      session["user_id"] = user.id
      redirect_to user_url(user), notice: "Welcome back, #{user.first_name}"
    else
      redirect_to "/login", notice: "Unknown email or password."
    end

  end

##From the users controller##
  def show
    @user = User.find_by_id(params[:id])
    permissions = Permission.where(:user_id => params[:id])
    @engagements = Engagement.all && permissions 
  end

end
