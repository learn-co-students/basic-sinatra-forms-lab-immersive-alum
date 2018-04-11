require 'sinatra/base'

class App < Sinatra::Base

	get '/team' do
		# show detail page of team

		erb :team
	end

	get '/newteam' do
		# show empty form
		erb :newteam
	end

	post '/team' do 
		# process form data and display
		@team_name = params["Team Name"]
		@coach = params["Coach"]
		@point_guard = params["Point Guard"]
		@shooting_guard = params["Shooting Guard"]
		@power_forward = params["Power Forward"]
		@small_forward = params["Small Forward"]
		@center = params["Center"]
		# binding.pry
		erb :team
	end
end
