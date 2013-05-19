class CasesController < ApplicationController

  def index
    @cases = Case.all
  end

  def show
    @case = Case.find_by_id(params[:id])
  end

  def new
    @case = Case.new
  end

  def create
    @case = Case.new
    @case.case_id = params[:case_id]
    @case.user_id = params[:user_id]
    @case.condition_id = params[:condition_id]
    
    if @case.save
      redirect_to cases_url
    else
      render 'new'
    end
  end

  def edit
    @case = Case.find_by_id(params[:id])
  end

  def update
    @case = Case.find_by_id(params[:id])
    @case.case_id = params[:case_id]
    @case.user_id = params[:user_id]
    @case.condition_id = params[:condition_id]
    
    if @case.save
      redirect_to cases_url
    else
      render 'new'
    end
  end

  def destroy
    @case = Case.find_by_id(params[:id])
    @case.destroy
    redirect_to cases_url
  end
end
