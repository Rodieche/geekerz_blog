class ArticleMailer < ApplicationMailer

	def new_article(article)
		@article = article

		User.all.each do |usuario| 
			mail(to: usuario.email, subject: "Nuevo articulo en Geekerz")
		end
	end

end
