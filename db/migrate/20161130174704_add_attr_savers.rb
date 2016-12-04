class AddAttrSavers < ActiveRecord::Migration[5.0]
  def change
  	add_column :savers, :kwh, :float
  	add_column :savers, :gas, :float
  end
end
