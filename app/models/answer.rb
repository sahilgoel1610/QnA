class Answer < ActiveRecord::Base
	validates_presence_of :ans_txt
	belongs_to :question
end
