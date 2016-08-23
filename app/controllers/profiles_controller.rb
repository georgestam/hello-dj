require 'soundcloud'

class ProfilesController < ApplicationController
before_action :set_profile, only: [:show, :edit, :update, :destroy]

  def index
    @profiles = Profile.all
  end

  def show


    # create a client object with your app credentials
    client = Soundcloud.new(:client_id => '6298d24e3c36a353530babe223ece02a')

    # get a tracks oembed data
    track_url = @profile.soundcloud_link
    embed_info = client.get('/oembed', :url => track_url)

    # print the html for the player widget
    @url_embed = embed_info['html']


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
    params.require(:profile).permit(:dj_name, :soundcloud_link, :price_hour, :bio)
  end
end



