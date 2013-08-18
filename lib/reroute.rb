class Reroute < CUMTD
	require 'route'

	attr_accessor :start_date, :end_date, :description, :affected_routes

	def initialize(json)
		@start_date = Date.strptime(json["start_date"], "%m/%d/%y")
		@end_date = Date.strptime(json["end_date"], "%m/%d/%y")
		@description = json["description"].gsub!("\n",' ')
		@affected_routes = Array.new
		json["affected_routes"].each do |affected_route|
			@affected_routes << Route.new(affected_route)
		end
	end
	
	def to_json(*a)
		{
		'start_date' => @start_date,
		'end_date' => @end_date,
		'description' => @description,
		'affected_routes' => @affected_routes
		}.to_json(*a)
	end
	
end