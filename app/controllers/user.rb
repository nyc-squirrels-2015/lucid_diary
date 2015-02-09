get '/users/:id' do
  @user = User.find(params[:id])
   erb :'user/show'
end

delete '/users/:id' do |id|
  User.find(id).destroy
  redirect "/signup"
end


