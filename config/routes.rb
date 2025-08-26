Rails.application.routes.draw do
	root	'themes#random'
	get		'themes/:theme_id/posts', to: 'posts#index', as: "theme_posts"
end
