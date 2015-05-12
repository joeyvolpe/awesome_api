class TimelinesController < ApplicationController

  def index
 	@trades = Trade.all.where(status: 'completed')
  	@users = User.all
    @items = Item.all
  	@timeline  = []

    i = 0
    while i < 16
       @timeline << @trades[i] unless @trades[i] == nil
       @timeline << @users[i]
       @timeline << @items[i]
       i += 1
    end

  end




  # @users.each do...

  #     @items.each do...

  #         @wall.sort...
          # @items = Items.all

          # i = 0
          # wall = []

          # while i < @trades.size
          #   wall.push(@trades[i])


end
