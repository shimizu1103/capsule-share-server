# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  name                   :string(20)       not null
#  email                  :string(255)      default(""), not null
#  encrypted_password     :string(255)      default(""), not null
#  reset_password_token   :string(255)
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0)
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string(255)
#  last_sign_in_ip        :string(255)
#  confirmation_token     :string(255)
#  confirmed_at           :datetime
#  confirmation_sent_at   :datetime
#  unconfirmed_email      :string(255)
#  authentication_token   :string(255)
#  created_at             :datetime
#  updated_at             :datetime
#

class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :token_authenticatable, :confirmable

  has_many :user_users
  has_many :friends, through: :user_users
  has_many :friend_requests_from_me, class_name: "FriendRequest"
  has_many :friend_requests_to_me, class_name: "FriendRequest", foreign_key: :friend_user_id
  has_many :upload_files

  before_save :ensure_authentication_token

  validates :name, presence: true, length: { maximum: 20 }
end
