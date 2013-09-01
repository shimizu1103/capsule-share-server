# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do

  factory :user do
    sequence(:name) { |n| "テスト#{n}" }
    sequence(:email) { |n| "person-#{n}@example.com" }
    password "1111"
    password_confirmation "1111"
    confirmed_at Time.now
  end
end
