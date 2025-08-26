class ThemesController < ApplicationController
  def index
		ramdom_id = Theme.pluck(:id).sample
		@theme = Theme.find_by(id: ramdom_id)
  end
end
