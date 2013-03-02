# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
AuctionItem.delete_all

AuctionItem.create(name: 'Playstation 4', endTime: '2013-06-01 12:00:00')
AuctionItem.create(name: 'Playstation 3', endTime: '2013-06-02 12:00:00')
AuctionItem.create(name: 'Xbox 360', endTime: '2013-06-03 12:00:00')
AuctionItem.create(name: 'Xbox 720', endTime: '2013-06-04 12:00:00')
AuctionItem.create(name: 'Wii U', endTime: '2013-06-05 12:00:00')
AuctionItem.create(name: 'Wii', endTime: '2013-06-06 12:00:00')
