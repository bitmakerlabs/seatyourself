class UsersController < ApplicationController
 def new
   @user = User.new
 end

 def create
   submitted_email =                   params[:user][:email]
   submitted_password =                params[:user][:password]
   submitted_password_confirmation =   params[:user][:password_confirmation]

   @user = User.new

   @user.email =                   params[:user][:email]
   @user.password =                params[:user][:password]
   @user.password_confirmation =   params[:user][:password_confirmation]

   if @user.save
     redirect_to root_url
   else
     render :new
   end
 end

end
