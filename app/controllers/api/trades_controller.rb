module API
	class TradesController < ApplicationController
		def index
			render json: @trades = Trade.all
		end

		def show

		end
	end
end