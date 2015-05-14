module API
	class ItemsController < ApplicationController
		def index
			render json: Item.all
		end

		def show
			render json: Item.find(params[:id])
		end

		# def create
		# 	item = Item.new(item_params)

		# 	if item.save
		# 		render json: item, status: 201, location: [:api, bowtie]
		# 	else
		# 		render json: bowtie.errors, status: 422
		# 	end
		# end


		private
		def item_params
			params.require(:item).permit(:item_name, :item_description, :user_id)
		end
	end
end