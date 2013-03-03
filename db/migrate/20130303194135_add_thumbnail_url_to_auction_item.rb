class AddThumbnailUrlToAuctionItem < ActiveRecord::Migration
  def change
    add_column :auction_items, :thumbnail_url, :string
  end
end
