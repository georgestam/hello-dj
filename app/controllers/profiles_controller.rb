require 'soundcloud'

class ProfilesController < ApplicationController

  skip_before_action :authenticate_user!, only: [ :show, :index ]
  before_action :set_profile, only: [:show, :edit, :update, :destroy]

  def index

      # <% distance_away = Geocoder::Calculations.distance_between(Geocoder.coordinates(@your_location), [profile.user.latitude,profile.user.longitude ]) %>

      #   <% if profile.price_hour < @max_price && profile.price_hour > @min_price && distance_away < @max_distance.to_f  %>

    # extract search parameters and use defualts if not entered by user
    @min_price = params[:price_range] ? params[:price_range].split(",").map(&:to_i)[0] : 0
    @max_price = params[:price_range] ? params[:price_range].split(",").map(&:to_i)[1] : 1000000
    @max_distance = params[:max_distance] && params[:max_distance] !="" ? params[:max_distance] : 1000
    @your_location = params[:your_location] && params[:your_location] !="" ? params[:your_location] : "London"

    user_ids = User.near(@your_location, @max_distance).map(&:id)
    @profiles = Profile.where(price_hour: @min_price..@max_price, user_id: user_ids)

    @hash = Gmaps4rails.build_markers(@profiles) do |profile, marker|
      marker.lat profile.user.latitude
      marker.lng profile.user.longitude
      marker.infowindow profile.dj_name
      marker.picture({
        url: ActionController::Base.helpers.image_path("map_icon.png"),
        width: 64,
        height: 64
      })
      # marker.infowindow render_to_string(partial: "/flats/map_box", locals: { flat: flat })
    end
  end

  def show
    # make map pin work for individual dj profile
    @hash = Gmaps4rails.build_markers(@profile) do |profile, marker|
      marker.lat profile.user.latitude
      marker.lng profile.user.longitude
      marker.infowindow profile.dj_name
    end

    # create a client object with your app credentials
    client = Soundcloud.new(:client_id => ENV["SOUND_CLOUD_CLIENT_app_id"])

    # get a tracks oembed data
    track_url = @profile.soundcloud_link
    embed_info = client.get('/oembed', :url => track_url)

    # print the html for the player widget
    @url_embed = embed_info['html']

    # .slice(0).slice(-1)

    # @reviews = Review.all

    @reviews = Review.where(booking_id: Booking.where(profile: @profile).pluck(:id))
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


