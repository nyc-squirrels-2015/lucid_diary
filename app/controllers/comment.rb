get '/dreams/:id/comments' do
  @dream = Dream.find(params[:id])
  erb :'comment/all'
end

get '/comment/new' do
  erb :'comment/new'
end

post '/comment' do
  comment = Comment.create(params[:comment])
  redirect "/dreams/#{comment.dream_id}/comments/all"
end
