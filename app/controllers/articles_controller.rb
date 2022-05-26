class ArticlesController < ApplicationController
#include ArcticleProssess

  #skip_before_action :verify_authenticity_token

  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def processData
    Article.processData(params[:id],params[:nextAction])
    @article = Article.find(params[:id])
    redirect_to @article
  end 

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)

    if @article.save
      redirect_to @article
    else
      render :new, status: :unprocessable_entity
    end
  end

  private
    def article_params
      params.require(:article).permit(:title, :body)
    end
end
