class LandingController < ApplicationController
  def index
    @selected_topic_mentora = params[:region_hub_tab] || 'about'
    @reviews = Review.visible.order(created_at: :desc)
  end
end