class ApplicationController < ActionController::Base

  if Rails.env.production?
    rescue_from ActionController::RoutingError, ::AbstractController::ActionNotFound, ActiveRecord::RecordNotFound do |exception|
      render_error 404, exception
    end

    rescue_from Exception do |exception|
      ExceptionNotifier.notify_exception(exception,:env => request.env, :data => {:message => "Błąd nieprzechwycony"})
      render_error 500, exception
    end

    rescue_from CanCan::AccessDenied do |exception|  
      if current_user
        render_error 403, exception
      else
        redirect_to new_user_session_path
      end
    end
  end

  def after_sign_in_path_for(resource)
    admin_root_path
  end

end
