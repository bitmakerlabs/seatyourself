class UsersController < ApplicationController
    # email = params[:email]
    # password = params[:password]#

    # u = User.find_by[email :email]#
    #   if u && u.password == password#
    #
    #
    #      #Access denied!
    #    end

    # salt = u.password(0..2)#
    # hashed_salted_password = u.password_digest(3..-1)

    # if u && unhash(u.unhashed_password) == submitted_password#
    # if u && u.hashed_password hash(submitted_password), u.salt)#
      #end?
      #end again?

    def decrypt(x, salt)

    end

    def encrypt(x)

    end

    def hash(x)

    end



    def index

    end

    def show
      @user = User.find(params[:id])

    end

    def new
        @user = User.new
    end

    def create
        @user = User.new
        @user.name = params[:user][:name]
        @user.email = params[:user][:email]
        @user.password = params[:user][:password]
        @user.password_confirmation = params[:user][:password_confirmation]
        if
            @user.save
            redirect_to restaurants_path
        else
            render :new
        end
    end

    def edit
        @user = User.find(params[:id])

    end

    def update
        @user = User.find(params[:id])
        @user.name = params[:user][:name]
        @user.email = params[:user][:email]
        @user.password = params[:user][:password]
        @user.password_confirmation = params[:user][:password_confirmation]
        if
            @user.save
            redirect_to user_path
        else
            render :edit
        end
    end

    def destroy

    end

end
