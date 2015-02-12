class PicturesController < ApplicationController
  def index
    @picture = Picture.all
  end

  def show
  end

  def new
    @picture = Picture.new
  end

  def create
    picture = Picture.new(params.require(:picture).permit(:pic, :caption))
    if picture.save
      redirect_to pictures_path
    end
  end

  def edit
  end

  def destroy
  end
end
