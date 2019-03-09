class PlacesController < ApplicationController
  # This line will check for a user to be logged in before allowing them to create anything.
  before_action :authenticate_user!, only: [:new, :create]

  def index
    @places = Place.order("name").page(params[:page]).per(5)
    # @posts = Post.page(params[:page]).per(10)
  end

  def new
    @place = Place.new
  end

  def create
    # this line passes the current user id to places when a new row is created (or something like it)
    current_user.places.create(place_params)
    redirect_to root_path
  end

  def show
    @place = Place.find(params[:id])
  end

  def edit
    @place = Place.find(params[:id])
  end

  def place_params
    params.require(:place).permit(:name, :description, :address)
  end



end
