# require "../server.rb"

require_relative "../lib/blog.rb"
require_relative "../lib/post.rb"
require "rspec"
require "rack/test"
require "pry"



describe Blog do 
	before :each do 
		@post5=Post.new("title5",Time.new,"text5")
		@post3=Post.new("title3",Time.new,"text3")
		@post1=Post.new("title1",Time.new,"text1")
		@post2=Post.new("title2",Time.new,"text2")
		@post4=Post.new("title4",Time.new,"text4")
		@post6=Post.new("title6",Time.new,"text6")
		@post7=Post.new("title7",Time.new,"text7")
		@post8=Post.new("title8",Time.new,"text8")

		@blog1=Blog.new
		@blog1.add_post(@post4)
		@blog1.add_post(@post1)
		@blog1.add_post(@post2)
		@blog1.add_post(@post8)
		@blog1.add_post(@post6)
		@blog1.add_post(@post3)
		@blog1.add_post(@post5)
		@blog1.add_post(@post7)

	
		@array_of_posts=@blog1.posts


	end


	describe "#posts" do
		it "Blog's #posts method returns an array of the posts added." do
			expect(@array_of_posts[0]).to eq(@post4)
		end	
	end
	describe "#posts" do
		it "Blog's #posts method returns an array of the posts added." do
			expect(@array_of_posts.class).to eq(Array)
		end	
	end
	describe "#latest_posts" do
		it "Blog's #latest_posts method returns an array of the posts in the correct chronological order" do
			@post_last=Post.new("title_last",Time.new,"text_last")
			@blog2=Blog.new
			@blog2.add_post(@post_last)
			expect(@blog2.latest_post[0].text).to eq("text_last")
			
		end
	end			
end

