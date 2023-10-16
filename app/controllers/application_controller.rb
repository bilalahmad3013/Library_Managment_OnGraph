class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?
    include CanCan::ControllerAdditions
    include Devise::Controllers::Helpers
    
  
    
    protected
  
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:phone_number, :adress, :pincode, :state, :first_name, :last_name])
    end
  end