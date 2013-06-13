class EngagementsController < ApplicationController

  def index
    @engagements = Engagement.all
  end

  def show
    @engagement = Engagement.find_by_id(params[:id])
    permission = Permission.where(:engagement_id => params[:id])
    @permissions = Engagement.all && permission 
    @user = User.find_by_id(params[@engagement.user_id])
    @condition = Condition.find_by_id(@engagement.condition_id)

  end

  def new
    @engagement = Engagement.new
  end

  def create
    @engagement = Engagement.new
    
    @engagement.user_id = session["user_id"]    
##    @engagement.user_id = params[:user_id]
    @engagement.condition_id = params[:condition_id]





    if @engagement.save
      redirect_to engagement_url(@engagement.id)
    else
      render 'new'
    end
  
  end

  def edit
    @engagement = Engagement.find_by_id(params[:id])
  end

  def update
    @engagement = Engagement.find_by_id(params[:id])
    @engagement.user_id = params[:user_id]
    @engagement.condition_id = params[:condition_id]
    
    if @engagement.save
      redirect_to engagements_url
    else
      render 'new'
    end
  end

  def destroy
    @engagement = Engagement.find_by_id(params[:id])
    @engagement.destroy
    redirect_to engagements_url
  end
end
