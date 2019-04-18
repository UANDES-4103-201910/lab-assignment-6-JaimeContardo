class RegistrationsController < ApplicationController
	def new
	
	end

	def create
	    @user=User.create!(create_params)
	    redirect_to user
	end

	private

	def create_params
		params.require(:registrations).permit(:name, :last_name, :email, :phone, :password)
	end
end
