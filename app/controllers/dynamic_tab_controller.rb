class DynamicTabController < ApplicationController

	def updates
		secs=12
		
		@updated_likes=Like.where(created_at: (Time.now - secs.seconds).. Time.now)
		@updated_quest=Question.where(created_at: (Time.now - secs.seconds).. Time.now)
		

    	render json: {:up_likes => @updated_likes, :up_quests => @updated_quest }
		#render js: "alert('reponse');"
	end
end
