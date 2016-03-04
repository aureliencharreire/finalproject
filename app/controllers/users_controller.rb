class UsersController < ApplicationController
    before_action :set_user, only: [:show, :edit]
    before_action :authenticate_user!, except: [:show, :index]
    before_action :UserAccept, only: [:edit,:update, :destroy]
    
    def index
        @users = User.all
    end

    def edit_user
        @user = User.find_by_id(params[:id])
    end

    def update_user
        @user = User.find_by_id(params[:id])
        respond_to do |format|
            if @user.update(account_update_params)
                format.html { redirect_to users_path, notice: 'User was successfully updated.' }
                format.json { render :show, status: :ok, location: @user }
            else
                format.html { render :edit }
                format.json { render json: @user.errors, status: :unprocessable_entity }
            end
        end
    end

    protected

    def set_user
      @user = User.find(params[:id])
    end

    def UserAccept
        if !params[:id].present?
            redirect_to dashboard_index_path
        else
            @userId = Product.find_by(id: params[:id]).user_id
            redirect_to dashboard_index_path unless @userId == current_user.id || current_user.admin
        end
    end

    def sign_up_params
        params.require(:user).permit(:email, :password, :password_confirmation, :admin)
    end

    def account_update_params
        params.require(:user).permit(:email, :password, :password_confirmation, :admin)
    end

end
