class AppearancesController < ApplicationController
  before_action :find_param, only:[ :edit, :update]

  def new
    @appearance = Appearance.new
  end

  def create
    @appearance = Appearance.new(appearance_params)
    @appearance.user_id = session[:user_id]

    if @appearance.save
      redirect_to @appearance.episode
    else
      redirect_to  new_appearance_path
    end
  end

  def edit

  end

  def update
    @appearance.update(appearance_params)
    redirect_to  new_appearance_path
  end

  private

  def appearance_params
    params.require(:appearance).permit(:guest_id, :episode_id,:user_id,:rating)
  end

  def find_param
      @appearance = Appearance.find(params[:id])
  end

end
