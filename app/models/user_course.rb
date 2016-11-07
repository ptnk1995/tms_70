class UserCourse < ApplicationRecord
  belongs_to :user
  belongs_to :course

  has_many :user_subjects
  has_many :subjects, through: :user_subjects

  enum status: {pending: 0, started: 1, finished: 2}
end
