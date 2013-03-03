class CreateAuctionItems < ActiveRecord::Migration
  def change
    create_table :auction_items do |t|
      t.string :name
      t.timestamp :start_time
      t.timestamp :end_time
      t.integer :donor_id
      t.timestamps
    end
  end
end
