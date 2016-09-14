class ArticlesController < ApplicationController
  def new
    #@user = User.find(params[:user_id])
    @article = Article.new(user_id: current_user.id)
    render 'users/articles/new'
  end

  def show
    @article = Article.find(params[:id])
  end

  def create
    @user = User.find(params[:user_id])
    @article = Article.new(article_params)
    @article.save
    render 'users/articles/show'
    #redirect_to user_articles_path(@user)
  end

  def index

  end
  private
    def article_params
       params.require(:article).permit(:title, :body)
    end
end
