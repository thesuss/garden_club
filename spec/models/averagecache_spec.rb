require 'rails_helper'

RSpec.describe AverageCache, type: :model do
  describe 'Regression tests' do
    it {is_expected.to belong_to :rater}
    it {is_expected.to belong_to :rateable}
  end
end
