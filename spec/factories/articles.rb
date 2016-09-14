FactoryGirl.define do
  factory :article do
    title "MyString"
    body "MyText"
    user { FactoryGirl.create(:user) }
  end
end
