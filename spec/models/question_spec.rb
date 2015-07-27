require 'spec_helper'

describe Question do

	it "should have many answers" do
		reflection=Question.reflect_on_association(:answers)
		reflection.macro.should eq :has_many
	end

end
