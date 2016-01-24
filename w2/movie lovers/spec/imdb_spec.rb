# require "../server.rb"

require_relative "../lib/search_imdb.rb"
require "rspec"
require "rack/test"
require "pry"



describe Search_imdb do 
	before :each do 
		@new_search = Search_imdb.new
	end	
	# 	@post5=Post.new("title5",Time.new,"text5")

	# 	@blog1=Blog.new
	# 	@blog1.add_post(@post4)

	
	# 	@array_of_posts=@blog1.posts


	# end


	describe "#search" do
		it "it receives one string and gets the results" do
			result = @new_search.search("torrente")
    		expect(result).to eq("Buzz")
		end	
	# end
	# describe "#posts" do
	# 	it "Blog's #posts method returns an array of the posts added." do
	# 		expect(@array_of_posts.class).to eq(Array)
	# 	end	
	# end
	# describe "#latest_posts" do
	# 	it "Blog's #latest_posts method returns an array of the posts in the correct chronological order" do
	# 		@post_last=Post.new("title_last",Time.new,"text_last")
	# 		@blog2=Blog.new
	# 		@blog2.add_post(@post_last)
	# 		expect(@blog2.latest_post[0].text).to eq("text_last")
			
	# 	end
	# end			
end

