class Question < ActiveRecord::Base
 validates :quest_txt, presence: true
 has_many :answers, dependent: :destroy
 has_many :likes, dependent: :destroy

 after_initialize :init

 	def init
 		self.liked ||=0
 	end

end
