require 'spec_helper'

describe Answer do

	it "should belong to single question" do
		reflection= Answer.reflect_on_association(:question)
		reflection.macro.should eq :belongs_to
		
	end

end
