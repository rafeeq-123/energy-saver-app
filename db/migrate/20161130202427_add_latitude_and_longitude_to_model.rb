class AddLatitudeAndLongitudeToModel < ActiveRecord::Migration[5.0]
  def change
    add_column :savers, :latitude, :float
    add_column :savers, :longitude, :float
  end
end
