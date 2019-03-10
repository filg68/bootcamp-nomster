class PhotosController < ApplicationController

  def create
    @place = Place.find(params[:place_id])
    @place.photos.create(photo_params.merge(user: current_user))

    # redirects user to the place they were just looking at
    redirect_to place_path(@place)

  end


  private

  def photo_params
    params.require(:photo).permit(:caption, :picture)
  end

end
