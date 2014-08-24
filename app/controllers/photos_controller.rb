class  PhotosController < ApplicationController 
  def show
    @photo = Photo.find(params[:id])
    @comment = Comment.new
    @comments = @photo.comments.all
  end

  def new
    @photos = Photo.all
    @photo = Photo.new
  end
  
  def create
    @photo = Photo.new(photo_params)
    if @photo.save
      flash[:notice] = "Thanks for sharing your photo!"
      redirect_to new_photo_path
    else
      flash[:error] = "Can't share this."
      redirect_to new_photo_path
    end
  end
  
  private
  def photo_params
    params.require(:photo).permit(:image, :caption, :user_id)
  end
end