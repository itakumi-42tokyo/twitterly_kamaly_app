class ThemesController < ApplicationController
	
	def random
		random_id = Theme.pluck(:id).sample
		if random_id
			redirect_to theme_posts_url(theme_id: random_id)
		else
			flash[:alert] = "There is no theme to display"
			redirect_to root_path
		end
	end
end
