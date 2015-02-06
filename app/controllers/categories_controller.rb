get '/categories/new' do
  erb :category_form
end

post '/categories' do
  p params[:title]
  new_category = Category.create(title: params[:title])
  redirect "/categories/#{new_category.id}"
end

get 'categories/' do
	erb :all_categories
end

get '/categories/:category_id' do
  @current_category = Category.find_by(id: params[:category_id])

  erb :current_category
  #show all dream articles for category
end

put '/categories/:category_id' do

end



