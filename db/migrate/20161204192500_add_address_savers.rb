class AddAddressSavers < ActiveRecord::Migration[5.0]
  def change
  	add_column :savers, :address, :string
  end
end
