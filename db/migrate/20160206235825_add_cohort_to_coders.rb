class AddCohortToCoders < ActiveRecord::Migration
  def change
    add_column :coders, :cohort, :string
  end
end
