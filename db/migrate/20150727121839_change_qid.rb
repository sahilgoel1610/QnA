class ChangeQid < ActiveRecord::Migration
  def change
  	rename_column :likes, :qid, :question_id
  end
end
