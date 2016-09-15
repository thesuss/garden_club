

FactoryGirl.define do
  @random = rand(1..100)
  factory :article do
    title "MyString"
    body "MyText"
    association :user, factory: :user
  end
end
