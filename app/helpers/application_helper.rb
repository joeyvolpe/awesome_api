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


  
end
