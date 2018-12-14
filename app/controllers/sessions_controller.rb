class SessionsController < ApplicationController

    def new

    end

    def create
      #submitted_email = params[:session][:email]
      #submitted_password = params[:session][:password]
        user = User.find_by(email: params[:sessions][:email])
        #should be user = User.find_by(email: submitted_email)

        if user && user.authenticate(params[:sessions][:password])
          #change password to submitted_password
            session[:user_id] = user.id
            redirect_to restaurants_path
        else
            render :new
        end
    end

    def destroy
        session[:user_id] = nil
        redirect_to restaurants_path
    end

end
