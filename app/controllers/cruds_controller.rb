class CrudsController < ApplicationController
	def index
		@cruds = Crud.all
		# render json: @cruds, status: :ok
	end

	def create
		@crud = Crud.new(crud_params)
		@crud.save
		# render json: @crud, status: :created
	end

	def new
		@crud = Crud.new()
	end

	def destroy
		@crud = Crud.find(params[:id])
		 @crud.destroy
	end

	def show
		@crud = Crud.find(params[:id])
	end

	def update
		@crud = Crud.find(params[:id])
		@crud.update(crud_params)
	end

	def edit
		@crud = Crud.find(params[:id])
	end

	private

	def crud_params
		params.require(:crud).permit(:f_name, :l_name)
	end
end
