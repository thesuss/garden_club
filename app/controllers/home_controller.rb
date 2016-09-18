class HomeController < ApplicationController
  def index
    @poptags = ActsAsTaggableOn::Tag.most_used(10)
    @last = @poptags.last
    @toprated = RatingCache.all.sort.first(10)
    binding.pry
  end
end
