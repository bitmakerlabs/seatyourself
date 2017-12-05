class UsersController < ApplicationController
	before_action :ensure_logged_in, except: [:new, :create]

	def new
		@user = User.new
	end

	def show
		@user = User.find_by_id(params[:id])
	end

	def edit
		@user = User.find_by_id(params[:id])
	end

	def create
		@user = User.new

		@user.name = params[:user][:name]
		@user.email = params[:user][:email]
		@user.password = params[:user][:password]
		@user.password_confirmation = params[:user][:password_confirmation]

		if @user.save
			redirect_to user_reservations_url(@user.id)
		else
			render :new
		end
	end

	def update
		@user = User.find_by_id(params[:id])

		@user.name = params[:user][:name]
		@user.email = params[:user][:email]
		@user.password = params[:user][:password]
		@user.password_confirmation = params[:user][:password_confirmation]

		if @user.save
			redirect_to user_url
		else
			render :edit
		end
	end

	def destroy
		@user = User.find_by_id(params[:id])
		@user.destroy
		redirect_to new_user_url
	end
end
