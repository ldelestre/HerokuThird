class UsersController < ApplicationController
	def new
	end

	def create
		user = User.create(username: params["username"], email: params["email"], bio: params["bio"])
		if user.new_record? == true
			redirect_to "/error"
		else
			redirect_to "/"
	end
end