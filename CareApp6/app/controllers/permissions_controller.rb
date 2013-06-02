class PermissionsController < ApplicationController

  def index
    @permissions = Permission.all
  end

  def show
    @permission = Permission.find_by_id(params[:id])
  end

  def new
    @permission = Permission.new
  end

  def create
    @permission = Permission.new
    @permission.engagement_id = params[:engagement_id]
    @permission.user_id = params[:user_id]
    
    if @permission.save
      redirect_to permissions_url
    else
      render 'new'
    end
  end

  def edit
    @permission = Permission.find_by_id(params[:id])
  end

  def update
    @permission = Permission.find_by_id(params[:id])
    @permission.engagement_id = params[:engagement_id]
    @permission.user_id = params[:user_id]
    
    if @permission.save
      redirect_to permissions_url
    else
      render 'new'
    end
  end

  def destroy
    @permission = Permission.find_by_id(params[:id])
    @permission.destroy
    redirect_to permissions_url
  end
end
