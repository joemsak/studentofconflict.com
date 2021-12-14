class PackagesController < ApplicationController
  def index
    @package = Package.three_month_starter
  end

  def show
    @package = Package.friendly.find(params[:id])
  end
end
