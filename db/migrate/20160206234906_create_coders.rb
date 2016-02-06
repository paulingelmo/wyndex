class CreateCoders < ActiveRecord::Migration
  def change
    create_table :coders do |t|
      t.string :name
      t.string :twitter_handle
      t.string :facebook_username
      t.string :github_username

      t.timestamps null: false
    end
  end
end
