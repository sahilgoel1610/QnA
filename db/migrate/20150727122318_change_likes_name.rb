class ChangeLikesName < ActiveRecord::Migration
  def change
  	rename_column :questions, :likes, :liked
  end
end
