class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @popular_profiles = Profile.where.not(photo: nil).order(created_at: :asc).limit(3).reverse
  end
end
