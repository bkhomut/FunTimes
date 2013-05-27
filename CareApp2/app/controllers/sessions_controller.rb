class SessionsController < ApplicationController

  def destroy
    session["user_id"] = nil
    redirect_to "/", notice: "Come back soon!"
  end
  def new
  end

  def create
    user = User.find_by_email(params["email"])

    if user && user.authenticate(params["password"])
      session["user_id"] = user.id
      redirect_to "/engagements", notice: "Welcome back, #{user.first_name}"
    else
      redirect_to "/login", notice: "Unknown email or password."
    end

  end
end
