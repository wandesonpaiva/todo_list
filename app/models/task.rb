class Task < ApplicationRecord
  belongs_to :user

  validates_presence_of :title
  validates_length_of :title, minimum: 5
  validate :due_date_must_be_in_the_future, :on => :create

  def due_date_must_be_in_the_future
    if self.due_date <= Date.today
      errors.add(:due_date, "must be in the future")
    end
  end

end