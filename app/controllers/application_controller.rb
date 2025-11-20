class ApplicationController < ActionController::Base

  def flash_message(action, model)
    I18n.t(".notices.#{action}.success", model: model.model_name.human)
  end

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

  protected

  def render_error(status, exception)
    logger.error exception.message
    logger.error exception.backtrace.join("\n")

    respond_to do |format|
      format.html { render template: "errors/error_#{status}", layout: 'layouts/application', status: status }
      format.all { render nothing: true, status: status }
    end
  end

end
