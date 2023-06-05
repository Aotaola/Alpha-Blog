class ArticlesController < ApplicationController

    def show
        @article = Article.find(params[:article])
    end

    def index 
        @articles = Article.all
    end
end

