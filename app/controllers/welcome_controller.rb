class WelcomeController < ApplicationController
  def index
    flash[:notice] = "早安呀"
  end
end
