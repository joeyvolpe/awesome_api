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

  def pending_trades?
    if (logged_in? && current_user.trade_pending > 0)
      return true
    else
      false
    end
  end

  # raise pending_trades?.inspect
end
