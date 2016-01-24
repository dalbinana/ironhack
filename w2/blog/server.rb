require "sinatra"
require "sinatra/reloader"
require "pry"
require "guard"
require "./lib/blog"
require "./lib/post"

enable :sessions

post5=Post.new("title5",Time.new,"text5")
post3=Post.new("title3",Time.new,"text3")
post1=Post.new("title1",Time.new,"text1")
post2=Post.new("title2",Time.new,"text2")
post8=Post.new("title8",Time.new,"text8")
post4=Post.new("title4",Time.new,"text4")
post6=Post.new("title6",Time.new,"text6")
post7=Post.new("title7",Time.new,"text7")


blog1=Blog.new
blog1.add_post(post1)
blog1.add_post(post2)
blog1.add_post(post8)
blog1.add_post(post6)
blog1.add_post(post3)
blog1.add_post(post4)
blog1.add_post(post5)
blog1.add_post(post7)


listado=blog1.posts
listado_sort=blog1.latest_post

get "/" do
	@listado = listado
	@listado_sort = listado_sort	
	erb :home
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

	

