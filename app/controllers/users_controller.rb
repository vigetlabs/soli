class UsersController < ApplicationController
    def show
    end

    def update
        user.update(user_params)
        if user.save
            redirect_to user
        end
    end

    def edit_profile
    end

    private
        def user
            @user ||= User.find(params[:id])
        end
        helper_method :user

        def user_params
            params.require(:user).permit(:id, :username, :bio)
        end
end
