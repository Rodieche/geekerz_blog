class BienvenidoController < ApplicationController
		before_action :authenticate_admin! , only: [:dashboard]

	def index
	end

	def dashboard
		@article = Article.all
		@categorie = Category.all
	end
end
