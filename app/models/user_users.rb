# == Schema Information
#
# Table name: user_users
#
#  id              :integer          not null, primary key
#  users_id        :integer          not null
#  friend_users_id :integer          not null
#  created_at      :datetime
#  updated_at      :datetime
#

class UserUsers < ActiveRecord::Base
end
