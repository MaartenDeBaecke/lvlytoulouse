module CurrentUserConcern
  extend ActiveSupport::Concern

  def current_user
    super || guest_user
  end

  def guest_user
    guest = GuestUser.new
    guest.email_name = "guest"
    guest.email = "guest@example.com"
    guest
  end
end