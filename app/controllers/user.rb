get '/users/:id' do
  @user = User.find(params[:id])
  if session[:user_id] == @user.id
    erb :'user/show'
  else
    redirect '/login'
  end
end
