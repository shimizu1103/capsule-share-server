# == Schema Information
#
# Table name: friend_requests
#
#  id             :integer          not null, primary key
#  user_id        :integer          not null
#  friend_user_id :integer          not null
#  status         :string(1)        default("1"), not null
#  created_at     :datetime
#  updated_at     :datetime
#

class FriendRequest < ActiveRecord::Base
  PENDING = 1
  APPROVAL = 2
  REFUSAL = 3
  CANCEL = 4

end
