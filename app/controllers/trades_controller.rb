class TradesController < ApplicationController
  def show
  end

  def index
    @trades = Trade.all.where(status: 'completed')
  end

  def my_trades
    @trades = current_user.trades.where(status: 'active')
  end

  def start_trade
    @user = User.find(params[:trade][:user_id])
    @item = Item.find(params[:id])
    @trade = @item.trades.new(trade_params)
    if @trade.save
      @user.save
      redirect_to user_path(@user), notice: 'Trade was succesfully requested.'
    else
      redirect_to user_path(@user), notice: 'Error: Please select an item to trade'
    end
  end

  def accept_trade
    # find trade and items
    @trade = Trade.find(params[:id])
    @offered_item = Item.find(@trade.offered_item.id)
    @requested_item = Item.find(@trade.requested_item.id)
    
    # switch and save ids of traded items 
    @offered_item.user_id = @trade.requested_item.user_id
    @requested_item.user_id = @trade.offered_item.user_id

    @trade.status = 'completed'
    @trade.save
    @offered_item.save
    @requested_item.save
    redirect_to user_path(current_user), notice: "Trade was succesfully completed. A #{@offered_item.item_name} is now in your inventory."
  end

  def reject_trade
    @trade = Trade.find(params[:id])
    @trade.status = 'rejected'
    @trade.save
    redirect_to user_path(current_user), notice: 'Trade was rejected.'
  end

  private
  def trade_params
    params.require(:trade).permit(:user_a_id, :item_a_id, :user_id, :item_b_id)
  end

end
