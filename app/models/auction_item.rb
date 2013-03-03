class AuctionItem < ActiveRecord::Base
  has_many :bids
  has_many :bidding_users, :through => :bids, :class_name => "User", :uniq => true
  belongs_to :donor, :class_name => "User"
end
