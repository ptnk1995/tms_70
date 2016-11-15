class Subject < ApplicationRecord
  has_many :course_subjects, dependent: :destroy
  has_many :user_subjects, dependent: :destroy
  has_many :tasks, dependent: :destroy, inverse_of: :subject
  has_many :users, through: :user_subjects
  has_many :courses, through: :course_subjects

  accepts_nested_attributes_for :tasks, allow_destroy: true

  mount_uploader :image, PictureUploader

  validates :name, presence: true
  validates :description, presence: true, length: {minimum: Settings.length}
  validate :validate_tasks

  scope :recent, ->{order created_at: :desc}

  private
  def validate_tasks
    if tasks.select{|task| !task._destroy}.count < Settings.task_quanlity
      errors.add :subjects, I18n.t("admin.subject_admin.task_errors")
    end
  end
end
