class HomeController < ApplicationController

	def index
		@nonprofits = Nonprofit.all
	end

	def new
		@new_nonprofit = Nonprofit.new
	end

	def create
		@new_nonprofit = Nonprofit.new(nonprofit_params)
		if @new_nonprofit.save
			redirect_to :back
		end
	end

	def edit
		@nonprofit = Nonprofit.find(params[:id])
	end

	def update
		@nonprofit = Nonprofit.find(params[:id])
		if @nonprofit.update_attributes(nonprofit_params)
			redirect_to :back
		end
	end

	def destroy
		@nonprofit = Nonprofit.find(params[:id])
		if @nonprofit.destroy
			redirect_to :back
		end
	end

	def show
		@nonprofit = Nonprofit.find(params[:id])
			redirect_to :back
	end
	
	private

	def nonprofit_params
		params.require(:nonprofit).permit!
	end

end
