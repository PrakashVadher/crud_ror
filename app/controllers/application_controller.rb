class ApplicationController < ActionController::Base	
	before_action :configure_permitted_parameters, if: :devise_controller?
	protected
  	def authenticate_user!
	    if user_signed_in?
	      super
	    else
	      redirect_to new_user_session_path, :notice => 'Unauthorized..'	      
	    end
	end

	  def configure_permitted_parameters
	    permit_attrs(%i[first_name last_name dob gender avatar role])
	  end

	  def permit_attrs(attrs)
	    %i[sign_up account_update].each do |action|
	      devise_parameter_sanitizer.permit(action, keys: attrs)
	    end
	  end
end
