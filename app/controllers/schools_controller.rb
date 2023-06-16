class SchoolsController < ApplicationController
  before_action :set_archmage

  def index
    @schools = @archmage.schools.all
  end

  def create
    @school = @archmage.schools.create(school_params)
    redirect_to archmage_path(@archmage)
  end

  def destroy
    @school = @archmage.schools.find(params[:id])
    @school.destroy
    redirect_to archmage_path(@archmage), status: :see_other
  end

  private

  def school_params
    params.require(:school).permit(:name)
  end

  def set_archmage
    @archmage = Archmage.find(params[:archmage_id])
  end 
end
