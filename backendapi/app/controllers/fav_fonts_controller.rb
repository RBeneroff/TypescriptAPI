class FavFontsController < ApplicationController
  before_action :set_profile, only: [:create, :index, :destroy]

  def set_profile
    @user = User.find(params[:user_id])
  end
  def create
    fav_font = FavFont.new(fav_fonts_params)
    fav_font.user_id = @user.id #if @user

    if fav_font.save
      render json: {status: 200, message: "Added a favorite"}
    else
      render json: {status: 422, fav_font: fav_font.errors}
    end
  end

  def index
    fonts = FavFont.all

    render json: {status: 200, fonts: fonts}
  end

  def destroy
    FavFont.destroy(params[:id])

    render json: {status: 204}
  end

  private

  def fav_fonts_params
    params.required(:fav_font).permit(:font_family, :subsets, :version, :variant, :font_url)
  end
end
