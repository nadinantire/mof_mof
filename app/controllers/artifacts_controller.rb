class ArtifactsController < ApplicationController
  before_action :set_artifact, only: [:show, :edit, :update, :destroy]

  def index
    @artifacts = Artifact.order("name").page(params[:page]).per(2)
  end

  def show
  end

  def new
    @artifact = Artifact.new
  end

  def edit
  end

  def create
    @artifact = Artifact.new(artifact_params)
      if @artifact.save
        redirect_to @artifact, notice: 'Artifact was successfully created.' 
      else
     render :new 
    end
  end

  def update
  
      if @artifact.update(artifact_params)
         redirect_to @artifact, notice: 'Artifact was successfully updated.' 
       
      else
       render :edit
       

    end
  end

  def destroy
    @artifact.destroy
    redirect_to artifacts_url, notice: 'Artifact was successfully destroyed.'
  
  end

  private
    def set_artifact
      @artifact = Artifact.find(params[:id])
    end

    def artifact_params
      params.require(:artifact).permit(:name, :description, :image, :amount, :category, :image_cache)
    end
end
