class PhotosController < ApplicationController
  layout "blog"
  before_action :require_user
  before_action :get_photo, only: [:edit, :update, :show, :destroy]
  before_action :get_galery, only: [:new, :create, :edit, :update]

  def index
    @photos = Photo.all
  end

  def new
    @photo = Photo.new
  end

  def create
    @photo = Photo.new(photo_params)
    if @photo.save
      redirect_to @photo, notice: "Utworzyłaś nowe zdjęcie"
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @photo.update(photo_params)
      redirect_to @photo, notice: "Zdjęcie zostało zuktualizowane"
    else
      render 'edit'
    end
  end

  def show
  end

  def destroy
    @photo.destroy
    redirect_to photos_path, notice: "Usunąłeś zdjęcie"
  end

  private
  def photo_params
    params.require(:photo).permit(:photo, :description, :galery_ids => [])
  end
  def get_photo
    @photo = Photo.find(params[:id])
  end
  def get_galery
    @galeries = Galery.all
  end
end