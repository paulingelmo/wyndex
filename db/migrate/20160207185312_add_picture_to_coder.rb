class AddPictureToCoder < ActiveRecord::Migration
  def change
    add_column :coders, :picture, :string
  end
end
