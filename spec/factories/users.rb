FactoryGirl.define do
  factory :user do
    name "My Name"
    email "My@Email.com"
    email_confirmation "My@Email.com"
    password "MyPassword"
    password_confirmation "MyPassword"
  end
end
