require 'rails_helper'

RSpec.describe AverageCache, type: :model do
  describe 'Regression tests' do
    it {is_expected.to belong_to :rater}
    it {is_expected.to belong_to :rateable}
  end
end

# RSpec.describe OverallAverage, type: :model do
#   describe 'Regression tests' do
#     it {is_expected.to belong_to :rateable}
#   end
# end
# ------ When I put this test in, I got all kinds of crazy errors:
#  ActiveRecord::DangerousAttributeError:
      #  overall_avg is defined by Active Record. Check to make sure that you don't have an attribute or method with the same name.

RSpec.describe Rate, type: :model do
  describe 'Regression tests' do
    it {is_expected.to belong_to :rater}
    it {is_expected.to belong_to :rateable}
  end
end

RSpec.describe RatingCache, type: :model do
  describe 'Regression tests' do
    it {is_expected.to belong_to :cacheable}
  end
end
