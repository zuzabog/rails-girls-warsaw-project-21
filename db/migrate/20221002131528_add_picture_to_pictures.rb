class AddPictureToPictures < ActiveRecord::Migration[7.0]
  def change
    add_column :pictures, :picture, :string
  end
end
