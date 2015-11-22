class Admin::PropertyTypesController < AdminController
  before_action :set_property_type, only: [:edit, :update, :destroy]

  def index
    @property_types = PropertyType.all
  end

  def new
    @property_type = PropertyType.new
  end

  def edit
  end

  def create
    @property_type = PropertyType.new(property_type_params)

    respond_to do |format|
      if @property_type.save
        format.html { redirect_to admin_property_types_url }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @property_type.update(property_type_params)
        format.html { redirect_to admin_property_types_url }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @property_type.destroy
    respond_to do |format|
      format.html { redirect_to admin_property_types_url }
      format.json { head :no_content }
    end
  end

  private
    def set_property_type
      @property_type = PropertyType.find(params[:id])
    end

    def property_type_params
      params.require(:property_type).permit(:name, :status)
    end
end
