class Admin::UsersController < ApplicationController
before_action :admin_restrict

def index
    @users = User.all.page(params[:page]).per(2)
  end

end
