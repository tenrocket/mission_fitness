class NonprofitsController < ApplicationController

	def index
		@nonprofits = Nonprofit.all
	end

	def new
		@nonprofit = Nonprofit.new
	end

	def create
		@nonprofit = Nonprofit.new(nonprofit_params)
		if @nonprofit.save
			render @nonprofit
		else
			render nothing: true
		end
	end

	def edit
		@nonprofit = Nonprofit.find(params[:id])
	end

	def update
		@nonprofit = Nonprofit.find(params[:id])
		if @nonprofit.update_attributes(nonprofit_params)
			render @nonprofit
		else
			render nothing: true
		end
	end
	# 		respond_to do |format|
	# 			format.js { render json: @nonprofit['name']}
	# 			format.html { redirect_to nonprofits_path }
	# 		end
	# 	else
	# 		render plain: "fail"
	# 	end
	# end

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
