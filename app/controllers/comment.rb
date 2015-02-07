get '/dreams/:id/comments' do
  @dream = Dream.find(params[:id])
  erb :'comment/all'
end
