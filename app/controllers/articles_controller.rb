class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @articles = Article.find(params[:id])
  end

  def new
    @articles = Article.new
  end

  def create
    @articles = Article.create(title: params[:article][:title], content: params[:article][:content])
    redirect_to root_path
  end

  private
  def set_articles
    @articles = Article.find(params[:id])
  end
end
