class ArticlesController < ApplicationController
  def new
    @article = Article.new(user_id: current_user.id)
  end

  def show
    @article = Article.find(params[:id])
  end

  def create
    @user = User.find(params[:user_id])
    @article = @user.articles.create(article_params)
    redirect_to user_article_path(@user.id, @article.id)
  end

  def index
    @article = Article.all
  end
  private
    def article_params
       params.require(:article).permit(:title, :body, :user_id)
    end
end
