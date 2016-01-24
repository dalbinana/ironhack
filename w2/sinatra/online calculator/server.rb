require "sinatra"
require "sinatra/reloader"
require "./lib/calculator.rb"
require "pry"
operation2=Calculator.new
get "/" do
	first = 0
  second = 0
  result = 0
  erb(:home)
end

get "/add" do
  erb(:add)
end

post "/operation" do
	operation=params[:calculate]
	first = params[:first_number].to_f
  second = params[:second_number].to_f
  result=operation2.send(operation,first,second)
  erb(:home)

  
end




post "/calculate_add" do

    first = params[:first_number].to_f
  second = params[:second_number].to_f
  result=Calculator.new.add(first,second)
  
  
  "#{first} + #{second} = #{result}"
end


# list_of_items_array=[]

# get "/users/:username" do 
# 	@username = params[:username]

# 	@hello = "Good morning!!!"
# 	@date= Date.today
# 	@ingredients=["onion", "tomatoes", "apples", "oranges"]
# 	erb :author
# end

# get "/hours/ago/:hours" do 
# 	@hours = params[:hours].to_i
# 	@hours_ago = (Time.now - @hours*3600).strftime "%H:%M:%S"
# 	@username = "visitor"
# 	@hello = "Good morning!!!"
# 	@date= Date.today
# 	@ingredients=["onion", "tomatoes", "apples", "oranges"]
# 	erb :author	
# end

# get "/" do
# 	erb :form
# end

# post "/username" do
# 	redirect "/users/#{params[:username]}"	
# end	

# get "/shopping_list" do

# 	@list_of_items=list_of_items_array
	
# 	erb :form_shopping_list
# end	

# post "/fake_page" do
# 	redirect "/shopping_list/#{params[:new_item]}"

# end

# post "/shopping_list" do
# 	@new_item = params[:new_item]
# 	list_of_items_array << @new_item
# 	redirect "/shopping_list"
# end

	

