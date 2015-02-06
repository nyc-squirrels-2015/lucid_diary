get '/categories/new' do
  erb :create_category
end

post '/categories/new' do
  erb :create_category
  redirect '/categories/#{cat_id}'
end

get 'categories/'
	
erb :all_categories
end

get '/categories/:category_id' do
  erb :category
end

put '/categories/:category_id' do
  erb :category
end

get '/login' do
  
end

get '/signup' do
  
end
