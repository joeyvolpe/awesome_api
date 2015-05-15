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
  def trade_requester(trade)
    User.find(trade.user_a_id)
  end

  def offered_item(trade)
     Item.where(id: trade.item_a_id).first
  end

  def requested_item(trade)
    Item.find(trade.item_id)
  end

  def trade_requestee(trade)
    User.find(trade.user_id)
  end

  # below are methods to access info for the items index

  def item_owner(item)
    User.find(item.user_id)
  end




end
