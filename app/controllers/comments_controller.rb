class  CommentsController < ApplicationController 

  def create
    @photo = Photo.find(params[:photo_id])
    if @comment = @photo.comments.create!(comment_params)
      flash.now[:notice] = "Thansk for posting!"
    else
      flash.now[:error] =  "Nope! Nope!"
    end
    redirect_to @photo
  end
  
  private
  def comment_params
    params.require(:comment).permit(:comment, :user_id, :photo_id)
  end
end