module ApplicationHelper
  def show_current_user
    if user_signed_in?
      return "#{current_user.email}"
    else
      return ""
    end
  end
end
