class AnswerController < ApplicationController

	def save_a
		ans_txt_id="answer"+params[:qid]
		record={"ans_txt" => params[ans_txt_id], "question_id" => params[:qid]}
		@ans=Answer.create(record)
		@ans.save
		#redirect_to '/list'
		
	end
end
