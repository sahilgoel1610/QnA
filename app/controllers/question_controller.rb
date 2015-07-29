class QuestionController < ApplicationController

def create_q
	question=Question.new(params[:question].permit(:likes,:quest_txt,:desc,:user))
	question.save
 	redirect_to "/list"
end

def view_q
	@question= Question.new
end

def list_q
	@questions=Question.all
end

def incr_like
	liked={"question_id" => params[:qid], "emailId" => params[:eid]}
	up_likes=Like.new(liked)
	
	if up_likes.valid?
		render js: up_likes.update(params[:qid])
	else
		render js: "alert('you have already liked this question');"
	end
end

def remove
	if Question.find_by(id: params[:id], user: params[:email]).destroy
		
		render js: "alert('question deleted');
					var question_div=document.getElementById('ques_block'+#{params[:id]});
					question_div.parentNode.removeChild(question_div);"
	else
		render js: "alert('Something went wrong');"
	end
end

def reply
	@qid=params[:qid]
end




end
