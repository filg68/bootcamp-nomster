class PlacesController < ApplicationController

  def index
    @places = Place.page(params[:page]).per(5)
    # @posts = Post.page(params[:page]).per(10)
  end

end
