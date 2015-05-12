module ApplicationHelper
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def view_button(item)
    if (logged_in? && current_user.id != item.user_id)
      return true
    else
      false
    end
  end

  def pending_trades
    if logged_in?
      return current_user.trades.where(status: 'active').count
    end
  end

  def user_access?
    if logged_in? && current_user.id == @user.id
      return true
    else
      false
    end
  end

  ## below are the methods to access completed trades for the trades index
  def trade_requester_name(trade)
    User.find(trade.user_a_id).name
  end

  def offered_item_name(trade)
     Item.find(trade.item_a_id).item_name
  end

  def requested_item_name(trade)
    Item.find(trade.item_id).item_name
  end

  def trade_requestee_name(trade)
    User.find(trade.user_id).name
  end

  # below are methods to access info for the items index

  def item_owner(item)
    User.find(item.user_id).name
  end


end
