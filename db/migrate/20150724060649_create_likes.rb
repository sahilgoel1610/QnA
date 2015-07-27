class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|

      t.timestamps
      t.integer :qid
      t.string :emailId
    end
  end
end
