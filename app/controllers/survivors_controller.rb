class SurvivorsController < ApplicationController
  before_action :set_survivor, only: [:show, :update, :destroy]

  # POST /survivors/distanced
  def distanced
    @survivors = Survivor.all

    distanced_survivors = []

    @survivors.each do |survivor|
      distance = (Float(survivor.lat) - Float(params[:res_lat])).abs + (Float(survivor.lng) - Float(params[:res_lng])).abs
      survy = survivor
      distanced_survivors.push(object: survy, distance: distance)


    end
    render json: {data: distanced_survivors}
  end

  # GET /survivors/1
  def show
    render json: @survivor
  end

  # POST /survivors
  def create
    @city = City.find_or_create_by(name: params[:city])
    @city.save

    new_survivor = {name: params[:name], number: params[:number], lng: params[:lng], lat: params[:lat], city_id: @city.id}

    @survivor = Survivor.new(new_survivor)


    if @survivor.save
      render json: @survivor, status: :created, location: @survivor
    else
      render json: @survivor.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /survivors/1
  def update

  end

  # DELETE /survivors/1
  def destroy
    distance = (Float(@survivor.lat) - Float(params[:res_lat])) + (Float(@survivor.lng) - Float(params[:res_lng]))
    if distance * 69 < 2
      @survivor.destroy
      render json: {code: 200}
    else
      render json: {work: "nope"}
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_survivor
      @survivor = Survivor.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def survivor_params
      params.require(:survivor).permit(:lat, :lng, :name, :number, :city, :res_lat, :res_lng)
    end
end
