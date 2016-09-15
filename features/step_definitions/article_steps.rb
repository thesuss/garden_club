Given(/^the following articles exist:$/) do |table|
  table.hashes.each do |hash|
    FactoryGirl.create(:article, hash)
  end
end
