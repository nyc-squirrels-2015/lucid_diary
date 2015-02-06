get '/login' do
 erb :'auth/login'
end

post '/login' do
  @user = User.authenticate(params[:user][:email],params[:user][:password])
  if @user
    session[:user_id] = @user.id
    redirect '/'
  else
    redirect '/login'
  end
end

get '/signup' do
  erb :'auth/signup'
end

post '/signup' do
  @user = User.create(params[:user])
  if @user
    session[:user_id] = @user.id
    redirect '/'
  else
    redirect '/signup'
  end
end


