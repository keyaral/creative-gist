class LarpRegistrationsController < ApplicationController

  def index
    @larp_registrations = LarpRegistration.all
  end

  def new
    @larp_registration = LarpRegistration.new
  end

  def create
    @larp_registration = LarpRegistration.new(larp_registration_params)

    if @larp_registration.save
      redirect_to larp_registrations_path, notice: "Registration was successful"
    else
      render :new
    end
  end

  def edit
    @larp_registration = LarpRegistration.find(params[:id])
  end

  def update
    @larp_registration = LarpRegistration.find(params[:id])
    if @larp_registration.update(larp_registration_params)
      redirect_to larp_registrations_path, notice: "Registration was updated successfully"
    else
      render :edit
    end
  end

  def larp_registration_params
    params.require(:larp_registration).permit(:larp_id, :user_id, :character_id, :registration_state)
  end
end
