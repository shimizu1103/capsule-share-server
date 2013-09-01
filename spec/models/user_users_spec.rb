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

require 'spec_helper'

describe UserUsers do
  pending "add some examples to (or delete) #{__FILE__}"
end
