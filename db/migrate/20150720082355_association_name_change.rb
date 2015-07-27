class AssociationNameChange < ActiveRecord::Migration
  def change
  	rename_column :answers ,:qid , :question_id
  end
end
