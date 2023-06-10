class ArticlesController < ApplicationController

    before_action :set_article, only: [:show, :create, :edit, :update, :destroy]

    def show
        # before action
    end

    def index 
        @articles = Article.all
    end

    def new
        @article = Article.new
    end

    def create
        # before action
       if @article.save
            flash[:notice] = "Article was successfully created"
            redirect_to @article
        else
            render 'new' 
       end
    end

    def edit
    # before action
    end

    def update
        # before action
       if @article.update(article_params)
        flash[:notice] = "Article was successfully updated"
        redirect_to @article
         else 
            render 'edit' 
       end

    end

    def destroy
        # before action
        @article.destroy
        flash[:notice] = "Article was successfully destroyed"
        redirect_to articles_path
    end
    

    private 

    def article_params
        params.require(:article).permit(:title, :description, :content)
    end

    def set_article
        @article = Article.find(params[:id])
    end


end

