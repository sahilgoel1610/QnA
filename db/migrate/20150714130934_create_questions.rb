class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|

      t.timestamps
      t.string :quest_txt
      t.string :user
      t.string :desc
      t.integer :likes
    end
  end
end
