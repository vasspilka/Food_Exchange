class ClaimsController < ApplicationController
  #before_action :signed_in_user

  def create
    @donation = Donation.find(params[:claim][:donation_id])
    current_user.claim!(@donation)
    respond_to do |format|
      format.html { redirect_to @donation }
      format.js
    end
  end

  #def destroy
  #  @claim = Claim.find(params[:id])
  #  @donation = Donation.find(@claim.donation_id)
  #  current_user.unattend!(@donation)
  #  respond_to do |format|
  #    format.html { redirect_to @donation }
  #    format.js
  #  end
  #end

end