require "sinatra"
require "sinatra/reloader"
enable :sessions
list_of_items_array=[]

get "/users/:username" do 
	@username = params[:username]

	@hello = "Good morning!!!"
	@date= Date.today
	@ingredients=["onion", "tomatoes", "apples", "oranges"]
	erb :author
end

get "/hours/ago/:hours" do 
	@hours = params[:hours].to_i
	@hours_ago = (Time.now - @hours*3600).strftime "%H:%M:%S"
	@username = "visitor"
	@hello = "Good morning!!!"
	@date= Date.today
	@ingredients=["onion", "tomatoes", "apples", "oranges"]
	erb :author	
end

get "/" do
	erb :form
end

post "/username" do
	redirect "/users/#{params[:username]}"	
end	

get "/shopping_list" do

	@list_of_items=list_of_items_array
	

	@text_session_data = session[:data]
	
	erb :form_shopping_list
end	

# post "/fake_page" do
# 	redirect "/shopping_list/#{params[:new_item]}"

# end

post "/shopping_list" do
	@new_item = params[:new_item]
	list_of_items_array << @new_item
	redirect "/shopping_list"
end

get "/:text" do
	session[:data] = params[:text]

	redirect "/shopping_list"
end	

get "/session-data" do
	@text_session_data = session[:data]
	erb :form_shopping_list
	
end	


	

