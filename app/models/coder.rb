class Coder < ActiveRecord::Base
  validates :name, :cohort, presence: true
  validates :cohort, numericality: {only_integer: true, greater_than: 0}
end
