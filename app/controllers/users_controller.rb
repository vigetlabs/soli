class UsersController < ApplicationController
    def show
    end

    def update
        user.update(user_params)
    end

    private
        def user
            @user ||= User.find(params[:id])
        end
        helper_method :user

        def user_params
            params.require(:user).permit(:id, :bio)
        end
end
