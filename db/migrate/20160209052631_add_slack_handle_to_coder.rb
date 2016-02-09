class AddSlackHandleToCoder < ActiveRecord::Migration
  def change
    add_column :coders, :slack_handle, :string
  end
end
