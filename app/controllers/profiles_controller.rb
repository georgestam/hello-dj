class ProfilesController < ApplicationController


  def index
    @profiles = Profile.all
  end

  def show
  end

  def new
  end

  def create
    @profile = Profile.new(profile_params)
    if @profile.save
      redirect_to profile_path(@profile)
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

private

  def set_profile
    @profile = Profile.find(params[:profile_id])
  end

  def profile_params
    params.require(:profile).permit(:dj_name, :soundcloud_link, :price_hour)
  end
end
