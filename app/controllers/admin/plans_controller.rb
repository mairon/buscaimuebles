class Admin::PlansController < AdminController
  before_action :set_plan, only: [:edit, :update, :destroy]

  def index
    @plans = Plan.all
  end

  def new
    @plan = Plan.new
  end

  def edit
  end

  def create
    @plan = Plan.new(plan_params)

    respond_to do |format|
      if @plan.save
        format.html { redirect_to admin_plans_url }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @plan.update(plan_params)
        format.html { redirect_to admin_plans_url }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @plan.destroy
    respond_to do |format|
      format.html { redirect_to admin_plans_url }
      format.json { head :no_content }
    end
  end

  private
    def set_plan
      @plan = Plan.find(params[:id])
    end

    def plan_params
      params.require(:plan).permit(:name, :status)
    end
end
