class HomeController < ApplicationController

  skip_before_action :authenticate_appuser!
  def index
  end
end
