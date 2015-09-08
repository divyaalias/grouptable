class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :authenticate_user!

 # 	def after_sign_in_path_for(resource)
 # #    root_path
 #  	if current_user.role.try(:name) != 'admin'
	# 		#render 'welcome/welcome'
	# 		redirect_to root_path
 #    end
	# end

end
