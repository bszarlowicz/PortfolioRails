class LandingController < ApplicationController
  def index
    @selected_topic_region_hub = params[:region_hub_tab] || 'about'
  end
end