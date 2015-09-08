class RegistrationsController < Devise::RegistrationsController
    
  def new
  	super
  end

	def create
		super
		if @user.save
			User.update_secret_code(params[:secret_code],@user.id)
		end
	end

end
