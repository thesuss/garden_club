FactoryGirl.define do
    @random = rand(1..100)
  factory :user do
    name "My Name"
    email "My@Email#{@random}.com"
    password "password"
    password_confirmation "password"
  end
  
end
