class ArticlesController < ApplicationController
  def new
    #@user = User.find(params[:user_id])
    @article = Article.new(user_id: current_user.id)
    render 'users/articles/new'
  end

  def show
    @article = Article.find(params[:id])
    render 'users/articles/show'

  end

  def create
    @user = User.find(params[:user_id])
    @article = @user.articles.create(article_params)
    redirect_to user_article_path(@user.id, @article.id)
  end

  def index
    @article = Article.all
    render 'users/articles/index'
  end
  private
    def article_params
       params.require(:article).permit(:title, :body, :user_id)
    end
end
