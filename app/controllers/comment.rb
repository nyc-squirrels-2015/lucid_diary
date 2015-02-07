get '/dreams/:id' do
  @dream = Dream.find(params[:id])
  erb :'comment/all'
end

get '/dreams/:id/comment/new' do
  erb :'comment/new'
end

post '/comment' do
  comment = Comment.create(params[:comment])
  redirect "/dreams/#{comment.dream_id}"
end
