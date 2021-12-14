class PackagesController < ApplicationController
  def index
    @package = Package.first || Package.new(id: 1)
  end

  def show
    @package = Package.find(params[:id])
  end
end
