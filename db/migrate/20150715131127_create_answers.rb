class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|

      t.timestamps
      t.string :ans_txt
      t.string :user
      t.integer :qid
    end
  end
end
