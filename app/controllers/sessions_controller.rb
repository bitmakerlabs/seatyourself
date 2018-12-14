class SessionsController < ApplicationController

    def new

    end

    def create
        user = User.find_by(email: params[sessions][:email])
        if user && ser.authenticate(params:sessions][:password])
            session:user_id = user.id
            redirect_to restaurants_path
        else
            render :new
        end
    end

    def destroy
        session[:user_id] = nil
        redirect_to roduct_path
    end

end
