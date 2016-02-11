class Coder < ActiveRecord::Base
  validates :name, :cohort, presence: true
end
