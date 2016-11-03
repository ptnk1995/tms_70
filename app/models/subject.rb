class Subject < ApplicationRecord
  has_many :course_subjects, dependent: :destroy
  has_many :user_subjects, dependent: :destroy
  has_many :tasks, dependent: :destroy
  has_many :users, through: :user_subjects
  has_many :courses, through: :course_subjects

  validates :name, presence: true
  validates :description, presence: true, length: {minimum: Settings.length}

  scope :recent, ->{order create_at: :desc}
end
