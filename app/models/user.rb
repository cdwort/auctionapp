class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  # attr_accessible :email, :password, :password_confirmation, :remember_me

  has_many :donated_items, :class_name => "AuctionItem", :foreign_key => "donor_id"
  has_many :bidded_items, :through => :bids, :class_name => "AuctionItem", :uniq => true
  has_many :bids

end
