class User < ActiveRecord::Base
  has_many :donated_items, :class_name => "AuctionItem", :foreign_key => "donor_id"
  has_many :bidded_items, :through => :bids, :class_name => "AuctionItem", :uniq => true
  has_many :bids
end
