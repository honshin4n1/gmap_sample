class MapsController < ApplicationController
  def index
    @maps = Map.all
    @map = Map.new
  end

  def create
    @map = Map.new(map_params)
    @map.save
    redirect_to root_path
  end

  def show
    @map = Map.find_by!(params[:id])
  end

  # def map
  #   # respond_to以下の記述によって、
  #   # remote: trueのアクセスに対して、
  #   # map.js.erbが変えるようになります。
  #   results = Geocoder.search(params[:address])
  #   @latlng = results.first.coordinates
  #   # これでmap.js.erbで、経度緯度情報が入った@latlngを使える。
  #   respond_to do |format|
  #     format.js
  #   end
    # end

  private

  def map_params
    params.permit(:address)
  end
end
