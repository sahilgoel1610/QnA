class Like < ActiveRecord::Base
	belongs_to :question
	validates_uniqueness_of :emailId, scope: :question_id , :message => "This User has already liked this Quesion"

def update (qid)
		puts ("updated called")
		self.save
		qu=Question.find(qid)
		qu[:liked]+=1
		qu.save
end


end
