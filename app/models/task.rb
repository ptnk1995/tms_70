class Task < ApplicationRecord
  belongs_to :subject, optional: true, inverse_of: :tasks

  has_many :user_tasks
  has_many :users, through: :user_tasks

  validates :name, presence: true
  validates :description, presence: true
end
