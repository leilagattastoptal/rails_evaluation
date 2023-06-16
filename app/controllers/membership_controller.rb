class MembershipsController < ApplicationController
  
  def new
    @membership = Membership.new
  end
  
  def create
    @membership = Membership.new(membership_params)
    @membership.save
  end

  private

  def membership_params
    params.require(:membership).permit(:mage_id, :school_id)
  end
end
