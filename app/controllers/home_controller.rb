class HomeController < ActionController::Base
  protect_from_forgery

	def index
		@api = Koala::Facebook::API.new
		@graph_data = @api.get_connections("10151330276113829", "photos")
	end
end

