class HomeController < ApplicationController
  def index
    @poptags = ActsAsTaggableOn::Tag.most_used(10)
    @last = @poptags.last
    @toprated = get_top_rated_articles
  end

  private
  def get_top_rated_articles
    ratings = []
    articles = Article.all
    articles.each do |hash|
      if hash.id != nil && hash.rating_average != nil
        ratings << {id: hash.id, avg: hash.rating_average[:avg]}
      end
    end
    rating_hash = ratings.sort_by { |hash| hash[:avg]}.reverse
    rated_articles = []
    rating_hash.each do |hash|
      rated_articles << Article.find_by(id: hash[:id])
    end
    rated_articles
  end
end
