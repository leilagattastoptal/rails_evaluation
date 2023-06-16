class ArchmagesController < ApplicationController
  before_action :set_archmage, only: [:show, :edit, :update, :destroy]

  def index
    @archmages = Archmage.all
  end

  def show
  end
  
  def new
    @archmage = Archmage.new
  end

  def create
    @archmage = Archmage.new(archmage_params)

    if @archmage.save
      redirect_to action: 'index'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @archmage.update(archmage_params)
      redirect_to @archmage
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @archmage.destroy
    redirect_to action: 'index', status: :found
  end

  private
  def archmage_params
    params.require(:archmage).permit(:name, :title)
  end

  def set_archmage
    @archmage = Archmage.find(params[:id])
  end 
end
