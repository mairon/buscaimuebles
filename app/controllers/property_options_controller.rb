class PropertyOptionsController < ApplicationController
  before_action :set_property_option, only: [:edit, :update, :destroy]

  def index
    @property_options = PropertyOption.all
  end

  def new
    @property_option = PropertyOption.new
  end

  def edit
  end

  def create
    @property_option = PropertyOption.new(property_option_params)

    respond_to do |format|
      if @property_option.save
        format.html { redirect_to admin_property_options_url }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @property_option.update(property_option_params)
        format.html { redirect_to admin_property_options_url }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @property_option.destroy
    respond_to do |format|
      format.html { redirect_to admin_property_options_url }
      format.json { head :no_content }
    end
  end

  private
    def set_property_option
      @property_option = PropertyOption.find(params[:id])
    end

    def property_option_params
      params.require(:property_option).permit(:option_id, :property_id)
    end
end
