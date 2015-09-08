class SecretCodesController < ApplicationController

	def index
		if current_user.role.try(:name) == 'admin'
			@secret_codes = SecretCode.all.paginate(:page => params[:page], :per_page => 15)
		else
			render 'welcome/welcome'
		end
	end

	def generate_codes
		if can? :create, SecretCode 
			params["code_num"].to_i.times.each do 
			 SecretCode.create(secret_code: SecureRandom.hex(2))
		  end
			redirect_to secret_codes_path
		else
			flash[:error] = "You are not authorised user for accessing this page"
			redirect_to secret_codes_path
		end
	end

end