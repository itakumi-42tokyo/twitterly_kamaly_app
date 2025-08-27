Rails.application.routes.draw do
  root 'themes#random'
  # get  'themes/:theme_id/posts', to: 'posts#index', as: 'theme_posts' の代わりに以下のように変更
  
  # themesにネストした形でpostsのURLを生成する
  # これにより /themes/:theme_id/posts というURLがindexとcreateアクションで使えるようになる
  resources :themes, only: [] do
    resources :posts, only: [:index, :create]
  end
end