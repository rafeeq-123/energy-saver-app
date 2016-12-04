class AddKeySavers < ActiveRecord::Migration[5.0]
  def change
  	add_column :savers, :user_id, :integer
  end
end
