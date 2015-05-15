module API
	class ItemsController < ApplicationController
		def index
			render json: @items = Item.all
		end

		def show
			render json: Item.find(params[:id])
		end



		private
		def item_params
			params.require(:item).permit(:item_name, :item_description, :user_id)
		end
	end
end