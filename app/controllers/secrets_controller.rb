class SecretsController < ApplicationController
	before_action :require_login

	def show
		render template: "secrets/big_secret"
	end

	private

		def require_login			
			redirect_to new_session_path unless current_user
		end
end
