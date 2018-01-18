class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
  
  private
  
    # Make the current_user method available to views, not just controllers!
    helper_method :current_user
  
    def authorize
      redirect_to root_path if current_user.nil?
    end

    def current_user
      @current_user ||= Operator.find_by(id: session[:operator_id]) if session[:operator_id]
    end
end
