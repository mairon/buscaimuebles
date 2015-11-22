class UsersController < ApplicationController
	before_filter :load_resources, only: %w(properties)
	def show
		@user = User.find(params[:id])
		@count_property = Property.where(user_id: @user.id).count('id')
		@properties = Property.where(user_id: @user.id)
		render layout: 'profile'
	end


	def properties
		@user = User.find(params[:id])
		render layout: 'profile'
	end

  private

  def load_resources
    @options = Option.where(status: true).includes(:properties)
  end
end
