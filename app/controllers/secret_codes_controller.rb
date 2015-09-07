class SecretCodesController < ApplicationController

	def index
		@secret_codes = SecretCode.all
	end

	def generate_codes
		code_num = params["code_num"]
		randon_gen = code_num.to_i.times.map{SecureRandom.hex(2)}
		randon_gen.each do |randon_gen|
  		SecretCode.create(secret_code: randon_gen)
		end
		redirect_to secret_codes_path
	end

end