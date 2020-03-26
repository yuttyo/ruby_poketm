class PoketmsController < ApplicationController
  before_action :authenticate_user!, only:[ :create, :edit, :update, :destroy]
  def index
    @poketm = Poketm.all
  end

  def show
    @poketm = Poketm.find(params[:id])
    @user = @poketm.user
  end

  def new
  @poketm = Poketm.new
  end

  def create
    @poketm = Poketm.new(poketm_params)
    @poketm.user_id = current_user.id
    @poketm.save!
    redirect_to poketms_url, notice: "#{@poketm.ptname}を登録しました。"
  end

  def edit
    @poketm = Poketm.find(params[:id]) 
  end

  def update
    @poketm = Poketm.find(params[:id])
    @poketm.update!(poketm_params)
    redirect_to poketms_url, notice: "「#{@poketm.ptname}」を更新しました"
  end

  def destroy
    poketm = Poketm.find(params[:id])
    poketm.destroy
    redirect_to poketms_url, notice: "「#{poketm.ptname}」を削除しました"
  end

  private

  def poketm_params
    params.require(:poketm).permit(:ptname, :name, :name2, :name3, :name4, :name5, :name6, :character, :character2, :character3, :character4, :character5, :character6, :move, :move2, :move3, :move4, :move5, :move6, :summary, :image)
  end



end
