class UsersController < ApplicationController
	def index
		@users = User.all
	end

	def new
		@user = User.new
	end

	def create
		@user = User.new(params[:user])
		if @user.save
			redirect_to root_url, notice: "Thank you for signing up!"
		else
			render :new
		end
	end

	def edit
		@user = User.find(params[:id])
	end

	def update
		@user = User.find(params[:id])
		@user.updating_password = true # Ep 41 conditional validations

		if @user.update_attributes(params[:user])
			redirect_to user_path(@user), notice: "Successfully updated user"
		else
			render :edit
		end
	end

	def show
		@user = User.find(params[:id])
	end

	def destroy
		@user = User.find(params[:id])
		@user.destroy
		flash[:notice] = "User successfully deleted"
		redirect_to users_path
	end
end
