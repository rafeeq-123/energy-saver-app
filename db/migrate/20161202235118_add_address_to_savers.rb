class AddAddressToSavers < ActiveRecord::Migration[5.0]
  def change
  	add_column :savers, :state, :string
  	add_column :savers, :city, :string
  end
end
