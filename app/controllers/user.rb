get '/users/:id' do
  @user = User.find(params[:id])
   erb :'user/show'
end

delete '/users/:id' do |id|
  p "USER ID: #{id} TEST TEST TEST"
  User.find(id).destroy
  redirect "/"
end


