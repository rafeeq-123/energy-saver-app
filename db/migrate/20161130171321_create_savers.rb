class CreateSavers < ActiveRecord::Migration[5.0]
  def change
    create_table :savers do |t|

      t.timestamps
    end
  end
end
