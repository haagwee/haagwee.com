class WelcomeController < ApplicationController
  def index
    Analytics.page(
      user_id: "anonymous_id",
      name: 'Home'
    )
  end
end
