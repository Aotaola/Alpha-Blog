class ApplicationController < ActionController::Base

    def show
        @article = Article.find(params[:article])
    end
    
end
