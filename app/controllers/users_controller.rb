class UsersController < ApplicationController
	def new1
		@user = User.new
	end

	def new2
		@user = User.new
	end

	def new3
		@user = User.new
	end
	
	def create
		user = User.create(username: params["username"],email: params["email"],bio: params["bio"])
		if user.new_record? == true
			redirect_to "/error"
		else
			redirect_to "/"
		end
	end

	def  create2
		user = User.create(username: params[:user][:username], email:params[:user][:email],bio:params[:user][:bio])
		if user.new_record? == true
			redirect_to "/error"
		else
			redirect_to "/"
		end
	end
end