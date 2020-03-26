class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @poketm = @user.poketms
  end
end
