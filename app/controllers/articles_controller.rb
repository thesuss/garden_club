class ArticlesController < ApplicationController
  def new
    #@user = User.find(params[:user_id])
    @article = Article.new(user_id: current_user.id)
    render 'users/articles/new'
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
