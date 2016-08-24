class ProfilesController < ApplicationController

  skip_before_action :authenticate_user!, only: [ :show, :index ]
  before_action :set_profile, only: [:show, :edit, :update, :destroy]

  def index
    @profiles = Profile.all

    @profiles.to_a.reject! { |profile| profile.user.latitude.nil? }

    @hash = Gmaps4rails.build_markers(@profiles) do |profile, marker|
      marker.lat profile.user.latitude
      marker.lng profile.user.longitude
      marker.infowindow profile.dj_name
      # marker.infowindow render_to_string(partial: "/flats/map_box", locals: { flat: flat })
    end
  end

  def show
  end

  def new
    @profile = Profile.new
  end

  def create
    @profile = Profile.new(profile_params)
    @profile.user = current_user
    if @profile.save
      redirect_to profile_path(@profile)
    else
      render :new
    end
    # @profile.user = current_user
  end

  def edit
  end

  def update
    @profile.update(profile_params)
    redirect_to profile_path(@profile)
  end

  def destroy
    @profile.destroy
  end

private

  def set_profile
    @profile = Profile.find(params[:id])
  end

  def profile_params
    params.require(:profile).permit(:dj_name, :soundcloud_link, :price_hour, :bio, :photo, :photo_cache)
  end
end


