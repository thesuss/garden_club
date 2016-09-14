class ArticlesController < ApplicationController
  def new
    @article = Article.new
  end


  def create
    @user = User.find(params[:user_id])
    @article = Article.new(article_params)
    @article.save
    redirect_to article_path(@user)
  end


  private
    def article_params
       params.require(:article).permit(:title, :body)
    end
end
