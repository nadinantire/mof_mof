class ExhibitionsController < ApplicationController
  before_action :set_exhibition, only: [:show, :edit, :update, :destroy]

  def index
    @exhibitions = Exhibition.order("title").page(params[:page]).per(5)
  end

  def show
    @comments = Comment.where(exhibition_id: @exhibition)
  end

  def new
    @exhibition = Exhibition.new
  end

  def edit
  end

  def create
    @exhibition = Exhibition.new(exhibition_params)
    if @exhibition.save
     redirect_to @exhibition, notice: 'Exhibition was successfully created.' 
    else
      render :new 
    end
  end

  def update
    
      if @exhibition.update(exhibition_params)
       redirect_to @exhibition, notice: 'Exhibition was successfully updated.' 
      else
        render :edit
      end
  end

  def destroy
    @exhibition.destroy
   
     redirect_to exhibitions_url, notice: 'Exhibition was successfully destroyed.' 
  
  end

  private
    
    def set_exhibition
      @exhibition = Exhibition.find(params[:id])
    end

    def exhibition_params
      params.require(:exhibition).permit(:image, :title, :date, :start_time, :discription, :end_time, :image_cache)
    end
end
