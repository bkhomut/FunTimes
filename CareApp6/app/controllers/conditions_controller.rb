class ConditionsController < ApplicationController

  def index
    @conditions = Condition.all
  end

  def show
    @condition = Condition.find_by_id(params[:id])
  end

  def new
    @condition = Condition.new
  end

  def create
    @condition = Condition.new
    @condition.condition_name = params[:condition_name]
    
    if @condition.save
      redirect_to conditions_url
    else
      render 'new'
    end
  end

  def edit
    @condition = Condition.find_by_id(params[:id])
  end

  def update
    @condition = Condition.find_by_id(params[:id])
    @condition.condition_name = params[:condition_name]
    
    if @condition.save
      redirect_to conditions_url
    else
      render 'new'
    end
  end

  def destroy
    @condition = Condition.find_by_id(params[:id])
    @condition.destroy
    redirect_to conditions_url
  end
end
