module ApplicationHelper
  require 'base64'

  def login_wave_pattern
    wave_svg = '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1200 120" preserveAspectRatio="none"><path d="M0,60 C200,40 400,40 600,60 C800,80 1000,80 1200,60 L1200,120 L0,120 Z" fill="#47b278"/></svg>'
    
    "data:image/svg+xml;base64,#{Base64.strict_encode64(wave_svg)}"
  end
end