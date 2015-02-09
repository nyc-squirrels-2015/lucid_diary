get '/categories/:category_id/dreams/new' do
  erb :'dream/dream_form'
end

post '/categories/:category_id/dreams/new' do
  @category = Category.find_by(id: params[:category_id])
  @new_dream = Dream.create(title: params[:title], content: params[:content], user_id: session[:user_id], category_id: params[:category_id])
    redirect "/categories/#{@new_dream.category_id}/dreams/#{@new_dream.id}"
end

get '/categories/:category_id/dreams/:dream_id' do
  @current_dream = Dream.find_by(id: params[:dream_id])
  erb :'dream/current_dream'
end

post '/categories/:category_id/dreams/:dream_id' do
  @comment = Comment.create(params[:comment])
  redirect "/categories/#{comment.category_id}/dreams/#{category.dream_id}"
end




# ????????????



# get '/dreams/:id' do
#   @dream = Dream.find(params[:id])
#   erb :'comment/all'
# end

# get '/dreams/:id/comment/new' do
#   erb :'comment/new'
# end

