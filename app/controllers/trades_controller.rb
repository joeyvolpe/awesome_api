class TradesController < ApplicationController
  def show
  end

  def index
    @trades = Trade.all.where(status: 'completed')
  end

  def my_trades
    @trades = current_user.trades.where(status: 'active')
    @waiting_response_trades = Trade.where("user_a_id = #{current_user.id} AND status = 'active' ")
  end

  def start_trade

    @user = User.find(params[:trade][:user_id])
    @item = Item.find(params[:id])

     # check for duplicate trades
     @duplicate_trades = Trade.where("item_id = #{@item.id} AND item_a_id = #{params[:trade][:item_a_id]} AND status = 'active'")

     @duplicate_trades_other_way = Trade.where("item_id = #{params[:trade][:item_a_id]} AND item_a_id = #{@item.id} AND status = 'active'")
     #fdsfds

    if @duplicate_trades.first.nil? && @duplicate_trades_other_way.first.nil?




      @trade = @item.trades.new(trade_params)
      if @trade.save
        @user.save
        redirect_to user_path(@user), notice: 'Trade was succesfully requested.'
      else
        redirect_to user_path(@user), notice: 'Error: Please select an item to trade'
      end


    else

      if @duplicate_trades.first.nil?
      redirect_to user_path(@user), notice: 'You requested that item already.'
      elsif @duplicate_trades_other_way.first.nil?
         redirect_to user_path(@user), notice: "#{@user.name} has already requested that item from you. Check your pending trades."
      end   

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

    #cancel all other trades with the same item id
    @remaining_trades = Trade.where("item_id = #{@trade.requested_item.id} OR item_a_id = #{@trade.offered_item.id}").where("status = 'active'")
      @remaining_trades.each do |trade|
        trade.status = 'nulled'
        trade.save
      end


    
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
