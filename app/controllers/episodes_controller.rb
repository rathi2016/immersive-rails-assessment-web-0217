class EpisodesController < ApplicationController
# before_action :login
  def index
    @episodes = Episode.all
  end

  def show
    @episodes = Episode.find(params[:id])
  end

end
