class PropertiesController < ApplicationController
  before_action :set_property, only: [:show, :edit, :update, :destroy]
  before_filter :load_resources, only: %w(edit)
  # GET /properties
  # GET /properties.json
  def index
    @properties = Property.all
  end

  # GET /properties/1
  # GET /properties/1.json
  def show
  end

  # GET /properties/new
  def new
    @property = Property.new
  end

  # GET /properties/1/edit
  def edit
    render layout: 'profile'
  end

  # POST /properties
  # POST /properties.json
  def create
    @property = Property.new(property_params)

    respond_to do |format|
      if @property.save
        format.html { redirect_to user_path(@property.user_id) }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /properties/1
  # PATCH/PUT /properties/1.json
  def update
    respond_to do |format|
      if @property.update(property_params)
        format.html { redirect_to user_path(@property.user_id) }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /properties/1
  # DELETE /properties/1.json
  def destroy
    @property.destroy
    respond_to do |format|
      format.html { redirect_to user_path(@property.user_id) }
    end
  end

  private

    def load_resources
      @options = Option.where(status: true).includes(:properties)
    end

    def set_property
      @property = Property.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def property_params
      params.require(:property).permit(:name, :area, :price, :description, :property_type_id, :interest, :status, :user_id, :bed_rooms, :bath_rooms, :address, :county_id, :state_id, :city_id, :latitude, :longitude, :video_url, option_ids: [])
    end
end
