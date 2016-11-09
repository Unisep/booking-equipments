class WelcomeController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @bookings = current_user.bookings
  end
end
