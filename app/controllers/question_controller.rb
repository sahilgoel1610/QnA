class QuestionController < ApplicationController

def create_q
	
		
		question=Question.new(params[:question].permit(:likes,:quest_txt,:desc,:user))
	# if !question.valid?
	# 	puts question.errors.messages	
	# else
	 	question.save
	 	redirect_to "/list"
	# end
end

def view_q
	@question= Question.new
end

def quest_params
   # params.require(:question).permit(:quest_txt, :desc)
end

def list_q
	@questions=Question.all
end

def incr_like
	

	liked={"question_id" => params[:qid], "emailId" => params[:eid]}
	up_likes=Like.new(liked)
	

	puts(up_likes.valid?)
	
	if up_likes.valid?
		up_likes.update(params[:qid])
		render nothing: true
	else
		
		render js: "alert('you have already liked this question');"
		
	end
end
def reply
	@qid=params[:qid]
end




end
