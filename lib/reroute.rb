class Reroute < CUMTD
	require 'route'
	def initialize(json)
		@start_date = Date.strptime(json["start_date"], "%m/%d/%y")
		@end_date = Date.strptime(json["end_date"], "%m/%d/%y")
		@description = json["description"].gsub!("\n",' ')
		@affected_routes = Array.new
		json["affected_routes"].each do |affected_route|
			@affected_routes << Route.new(affected_route)
		end
	end
	
	
end