# == Schema Information
#
# Table name: user_users
#
#  id             :integer          not null, primary key
#  user_id        :integer          not null
#  friend_user_id :integer          not null
#  created_at     :datetime
#  updated_at     :datetime
#

class UserUser < ActiveRecord::Base
end
