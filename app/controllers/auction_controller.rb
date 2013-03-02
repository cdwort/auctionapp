class AuctionController < ApplicationController
  before_action :set_auction_item, only: [:show, :edit, :update, :destroy]
  
  def index
    @auction_items = AuctionItem.all
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_auction_item
    @auction_item = AuctionItem.find(params[:id])
  end
  
  def auction_item_params
    params.require(:auction_item).permit(:name, :endTime)
  end
end
