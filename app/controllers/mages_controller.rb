class MagesController < ApplicationController
  before_action :set_mage, only: [:show, :edit, :update, :destroy]

  def index
    @mages = Mage.all
    @memberships = Membership.all
  end

  def show
    @schools = School.all
  end
  
  def new
    @mage = Mage.new
  end

  def create
    @mage = Mage.new(mage_params)

    if @mage.save
      redirect_to action: 'index'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @mage.update(mage_params)
      redirect_to @mage
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @mage.destroy
    redirect_to action: 'index', status: :found
  end

  private

  def mage_params
    params.require(:mage).permit(:name, :elemental_power)
  end

  def membership_params
    params.require(:membership).permit(:mage_id, :school_id)
  end

  def set_mage
    @mage = Mage.find(params[:id])
  end  
end
