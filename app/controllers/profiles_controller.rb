require 'soundcloud'

class ProfilesController < ApplicationController

  skip_before_action :authenticate_user!, only: [ :show, :index ]
  before_action :set_profile, only: [:show, :edit, :update, :destroy]

  def index

    # extract search parameters and use defualts if not entered by user
    @min_price = params[:price_range] ? params[:price_range].split(",").map(&:to_i)[0] : 0
    @max_price = params[:price_range] ? params[:price_range].split(",").map(&:to_i)[1] : 10000000000
    @max_distance = params[:max_distance] && params[:max_distance] !="" ? params[:max_distance] : 10000000000
    @your_location = params[:your_location] && params[:your_location] !="" ? params[:your_location] : "London"

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


    # create a client object with your app credentials
    client = Soundcloud.new(:client_id => ENV["SOUND_CLOUD_CLIENT_app_id"])

    # get a tracks oembed data
    track_url = @profile.soundcloud_link
    embed_info = client.get('/oembed', :url => track_url)

    # print the html for the player widget
    @url_embed = embed_info['html']

    # .slice(0).slice(-1)

    @reviews = Review.all
    # @reviews = Review.where(profile: @profile.bookings)

    # Booking.where(profile: current_user.profiles)

    # @popular_profiles = Profile.where.not(photo: nil).order(created_at: :asc).limit(6).reverse

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
    flash[:notice] = "Your DJ profile has been deleted"
    redirect_to root_path
  end

private

  def set_profile
    @profile = Profile.find(params[:id])
  end

  def profile_params
    params.require(:profile).permit(:dj_name, :soundcloud_link, :price_hour, :bio, :photo, :photo_cache)
  end
end


