get '/category/:category_id/dreams/:dream_id' do
  @current_dream = Dream.find_by(id: params[:dream_id])
  erb :current_dream

end
