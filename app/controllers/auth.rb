get '/login' do
 erb :'auth/login'
end

post '/login' do
  user = User.find_by(name:params[:user][:name])
  if user.try(:authenticate, params[:user][:password])
    session[:user_id] = user.id
    redirect "/users/#{user.id}"
  else
    redirect '/login'
  end
end

get '/logout' do
  session.clear
  redirect '/'
end

get '/signup' do
  erb :'auth/signup'
end



post '/signup' do
  @user = User.create(params[:user])
  if @user
    session[:user_id] = @user.id
    redirect "/users/#{@user.id}"
  else
    redirect '/'
  end
end
