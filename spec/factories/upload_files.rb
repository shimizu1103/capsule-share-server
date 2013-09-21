# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :upload_file do
    user_id 1
    file_name "MyString"
    owned_file "MyString"
  end
end
