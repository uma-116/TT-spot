class AddStationToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :station, :string
  end
end
