class  PhotosController < ApplicationController 
  def show
    @photo = Photo.find(params[:id])
  end

  def new
    @photos = Photo.all
    @photo = Photo.new
  end
  
  def create
    @photo = Photo.new(photo_params)
    if @photo.save
      redirect_to(new_photo_path, :notice => "Thanks for sharing your photo!")
    else
      redirect_to(new_photo_path, :notice => "Can't share this.")
    end
  end
  
  private
  def photo_params
    params.require(:photo).permit(:image, :caption)
  end
end