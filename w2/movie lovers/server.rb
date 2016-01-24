require "sinatra"
require "sinatra/reloader"
require "pry"
require "guard"
require "./lib/imdb"
require "./lib/contest"
require "imdb"

enable :sessions

get "/" do
	erb :home
end	




post "/results" do
	@string_to_search=params[:string_to_search]
	@to_search=Search_imdb.new
	@array_of_posters_home=@to_search.search(@string_to_search)
	@array_poster_year=Contest.new(@array_of_posters_home).array_of_years_posters
	@year_picked=Contest.new.pick_year_to_contest(@array_poster_year)

	# @year_picked=Contest.new.pick_year_to_contest(@array_poster_year)
	# @refined_years=@year.extract_ids_years
	# @defi=@refined_years.pick_year
	
	erb :results
end	
	


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

# # post "/fake_page" do
# # 	redirect "/shopping_list/#{params[:new_item]}"

# # end

# post "/shopping_list" do
# 	@new_item = params[:new_item]
# 	list_of_items_array << @new_item
# 	redirect "/shopping_list"
# end

	

