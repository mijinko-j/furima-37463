class ItemsController < ApplicationController
  def index
    @items = Item.new
  end

  def new
    @tweet - Tweet.new
  end
end
