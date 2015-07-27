class Question < ActiveRecord::Base
 validates :quest_txt, presence: true
 has_many :answers 
 has_many :likes

 after_initialize :init

 	def init
 		self.liked ||=0
 	end

end
