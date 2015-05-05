class TradesController < ApplicationController
  def show

  end

  def index
    @trades = Trade.all
  end

  def my_trades
    @trades = 
  end

  def start_trade
  	@user = User.find(params[:trade][:user_b_id])
    @item = Item.find(params[:id])
    @trade = @item.trades.new(trade_params)
    if @trade.save
      @user.trade_pending += 1
      # increment(@user.trade_pending, by = 1) public
      @user.save
      redirect_to user_path(@user), notice: 'Trade was succesfully requested.'
    else
      redirect_to user_path(@user), notice: 'Error: Please select an item to trade'
    end
  end

  private
  def trade_params
    params.require(:trade).permit(:user_a_id, :item_a_id, :user_b_id, :item_b_id)
  end

end
