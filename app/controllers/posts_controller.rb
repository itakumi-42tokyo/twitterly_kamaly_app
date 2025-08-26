class PostsController < ApplicationController
  def index
    # 1. URLの:theme_idを使って、表示すべき特定のテーマを取得
    @theme = Theme.find(params[:theme_id])

    # 2. そのテーマに紐づく投稿を新着順で取得
    @posts = @theme.posts.order(created_at: :desc)

    # この後、app/views/posts/index.html.erb が表示される
  end

	def create
	end
end
