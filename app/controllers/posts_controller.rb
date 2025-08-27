class PostsController < ApplicationController
  def index
    # 1. URLの:theme_idを使って、表示すべき特定のテーマを取得
    @theme = Theme.find(params[:theme_id])

    # 2. そのテーマに紐づく投稿を新着順で取得
    @posts = @theme&.posts.order(created_at: :desc)
		@post = Post.new
    # この後、app/views/posts/index.html.erb が表示される
  end

	def create
		@theme	= Theme.find(params[:theme_id])
		@post = Post.new(content: params[:post][:content], theme_id: params[:post][:theme_id])
		if (@post.save)
			flash[:success] = "登録しました"
			redirect_to theme_posts_url(@theme)
		else
			flash[:danger] = "登録に失敗しました"
			redirect_to theme_posts_url(@theme)
		end
	end
end
