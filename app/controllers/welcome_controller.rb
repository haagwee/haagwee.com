class WelcomeController < ApplicationController
  def index
    Analytics.page(name: 'Home')
  end
end
