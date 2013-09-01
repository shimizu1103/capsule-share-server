# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :friend_request, :class => 'FriendRequests' do
    users_id 1
    friend_users_id 1
    status ""
  end
end
