class PackagesController < ApplicationController
  def index
    @package = Package.primary_starter
  end

  def show
    @package = Package.friendly.find(params[:id])
  end
end
