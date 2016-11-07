class CreateUserSubjects < ActiveRecord::Migration[5.0]
  def change
    create_table :user_subjects do |t|
      t.integer :user_id
      t.integer :user_course_id
      t.integer :subject_id
      t.string :description
      t.integer :status
      t.datetime :end_date
      t.references :user, foreign_key: true
      t.references :user_course, foreign_key: true
      t.references :subject, foreign_key: true

      t.timestamps
    end
  end
end
