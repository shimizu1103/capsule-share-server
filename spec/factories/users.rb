# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do

  factory :user do
    sequence(:name) { |n| "テスト#{n}" }
    sequence(:email) { |n| "person-#{n}@example.com" }
    password "1111"
    password_confirmation "1111"
    confirmed_at Time.now
  end

  factory :arakawa, class: User do
    name "アラカワ"
    email "arakawa@vyw.jp"
    password "1111"
    password_confirmation "1111"
    confirmed_at Time.now
  end

  factory :kawasaki, class: User do
    name "カワサキ"
    email "y-kawasaki@vyw.jp"
    password "1111"
    password_confirmation "1111"
    confirmed_at Time.now
  end

  factory :shimizu, class: User do
    name "シミズ"
    email "t-shimizu@vyw.jp"
    password "1111"
    password_confirmation "1111"
    confirmed_at Time.now
  end
end
