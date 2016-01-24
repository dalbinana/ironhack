# require "../server.rb"
require_relative "../server.rb"
require_relative "../lib/blog.rb"
require_relative "../lib/post.rb"
require "rspec"
require "rack/test"

describe "blog's #post methods returns an array of the posts added"

# describe "Server Service" do #es la clase que testejarem
# 	include Rack::Test::Methods

# 	def app #app es el nom que li donem al metode de test per no tenir que anar posant Sinatra::Application
# 		Sinatra::Application
# 	end	


# 	it "should load the home page" do
# 		get "/"
# 		expect(last_response).to be_ok
# 		end	

# 	it "sjould not load the home page" do
# 		get "/home"
# 		expect(last_response).to_not be_ok
# 		end

# 	it	"should load the pther page" do
# 		get "/real_page"	
# 		expect(last_response).to be_ok
# 		end
	
# 	describe "#hi" do
# 	it "should redirect to the real page" do
# 		get "/hi"
# 		expect(last_response.redirect?).to be(true)
# 		follow_redirect!
# 		expect(last_request.path).to eq('/real_page')
# 		end	
# 	end

# end

