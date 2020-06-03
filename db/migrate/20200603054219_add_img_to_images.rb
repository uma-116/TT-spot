class AddImgToImages < ActiveRecord::Migration[5.2]
  def change
    add_column :images, :img, :string
  end
end
