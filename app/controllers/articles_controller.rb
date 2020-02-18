class ArticlesController < ApplicationController
  before_action :set_article, only: [:show,:edit,:like,:update,:destroy]
  before_action :protect_article, only: [:edit, :update, :destroy]

  def index
    @article = Article.all.sort_by { |art| -art.like_count }
  end

  def show
  end

  def new
    @article = @current_user.articles.new
  end

  def edit
  end

  def like
    @article.add_like
    redirect_to request.referrer
  end

  def create
    @article = @current_user.articles.new(article_params)

    if @article.save
      redirect_to @article
    else
      render 'new'
    end
  end

  def update

    if @article.update(article_params)
      redirect_to @article
    else
        render 'edit'
    end
  end

  def destroy
    @article.destroy

    redirect_to articles_path
  end

  private
  def article_params
    params.require(:article).permit(:title,:text)
  end

  def set_article
    @article = Article.find(params[:id])
  end

  def protect_article
    unless @article.author? @current_user
      redirect_to @article
    end
  end

end
