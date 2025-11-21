class LandingController < ApplicationController
  def index
    @selected_topic = 'about'
    @reviews = Review.visible.order(created_at: :desc)
  end
end