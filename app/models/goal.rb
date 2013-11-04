class Goal < ActiveRecord::Base
  belongs_to :section
  belongs_to :wheel
  validates :name, presence: true
  validates :due_date, presence: true
end
