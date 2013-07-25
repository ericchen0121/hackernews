get '/' do
  all_posts = Post.all
  @all_posts_data = []
  all_posts.each do |post|
    @all_posts_data << post.data
  end

  erb :index
end

post '/posts' do
  current_post = Post.create(title: params[:post_title], url: params[:post_url], user_id: 1) #change hardcoding later
  redirect "/posts/#{current_post.id}"
end

get '/posts/:id' do
  @post_data = Post.find(params[:id]).data
  @comments = Comment.where(post_id: @post_data[:id]) # array of Comment objects
  @comments_data = []
  @comments.each do |comment|
    @comments_data << comment.data
  end

  erb :show_post
end

post '/posts/:id/comments/new' do
  Comment.create(post_id: params[:id], user_id: 1, comment: params[:comment], parent: 0)
  redirect "/posts/#{params[:id]}"
end
