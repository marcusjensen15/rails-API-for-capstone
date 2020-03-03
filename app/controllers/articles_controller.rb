class ArticlesController < ApplicationController

  def index
    @articles = Article.all
    json_response(@articles)
  end

  def show
    @article = Article.find(params[:id])
    json_response(@article)
  end

  def create
    @article = Article.create(article_params)
    json_response(@article)
  end

  def update
    @article = Article.find(params[:id])
    @article.update(article_params)
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
  end

  private
  def json_response(object, status = :ok)
    render json: object, status: status
  end

  def article_params
    params.permit(:date, :content, :title, :topic, :postid)
  end
end
