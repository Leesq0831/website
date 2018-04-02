class ArticlesController < ApplicationController

	def index
		
		@query = Article.ransack(params[:q])
    @articles = @query.result.page(params[:page])

  end

	def new
	end

	def create
	end
end