class UsersController < ApplicationController

    def index
        user = User.new(user_params)
        @users = user.search
    end

    private
    def user_params
        params.permit(:search_name, :search_age)
    end
end