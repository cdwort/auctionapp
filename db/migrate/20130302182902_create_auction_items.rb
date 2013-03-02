class CreateAuctionItems < ActiveRecord::Migration
  def change
    create_table :auction_items do |t|
      t.string :name
      t.timestamp :endTime

      t.timestamps
    end
  end
end
