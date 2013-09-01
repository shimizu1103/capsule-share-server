# == Schema Information
#
# Table name: friend_requests
#
#  id              :integer          not null, primary key
#  users_id        :integer          not null
#  friend_users_id :integer          not null
#  status          :string(1)        default("1"), not null
#  created_at      :datetime
#  updated_at      :datetime
#

class FriendRequests < ActiveRecord::Base
end
