class VisitsController < ApplicationController
  before_action :set_visit, only: [:show, :edit, :update, :destroy]

  def index
    @visits = Visit.all
  end

  def show
  end

  def new
    @visit = Visit.new
  end
  def edit
  end

  def create
    @visit = Visit.new(visit_params)
    if @visit.save
      redirect_to @visit, notice: 'Visit was successfully created.' 
    else
      render :new   
    end
  end

  def update
    if @visit.update(visit_params)
      redirect_to @visit, notice: 'Visit was successfully updated.' 
    else
      render :edit 
    end
  end
  def destroy
    @visit.destroy
    redirect_to visits_url, notice: 'Visit was successfully destroyed.' 
  end
  private
    def set_visit
      @visit = Visit.find(params[:id])
    end
    def visit_params
      params.require(:visit).permit(:day_week, :start_time, :end_time)
    end
end
