get '/users/:id' do
  @user = User.find(params[:id])
  if session[:user_id] == @user.id
    erb :'user/show'
  else
    redirect '/login'
  end
end

delete '/users/:id' do |id|
  p "USER ID: #{id} TEST TEST TEST"
  User.find(id).destroy
  redirect "/"
end


