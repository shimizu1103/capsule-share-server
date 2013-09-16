# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
friend_requests_to = []
friend_requests_from = []
2.times do |i|
  friend_requests_to << FactoryGirl.create(:user)
end
2.times do |i|
  friend_requests_from << FactoryGirl.create(:user)
end

users = [
  FactoryGirl.create(:arakawa),
  FactoryGirl.create(:kawasaki),
  FactoryGirl.create(:shimizu),
]

users.each do |user|
  users.each do |to_user|
    next if user == to_user
    user.user_users.create friend_user_id: to_user.id
  end

  friend_requests_to.each do |friend_request_to|
    user.friend_requests_from_me.create friend_user_id: friend_request_to.id
  end

  friend_requests_from.each do |friend_request_from|
    user.friend_requests_to_me.create user_id: friend_request_from.id
  end
end
