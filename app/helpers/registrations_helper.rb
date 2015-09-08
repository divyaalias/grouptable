module RegistrationsHelper

	def secret_codes
		secret_codes = SecretCode.where(user_id: nil)
	end
	
end
