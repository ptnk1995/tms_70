class CreateUserTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :user_tasks do |t|
      t.integer :user_id
      t.integer :task_id
      t.integer :user_subject_id
      t.references :user, foreign_key: true
      t.references :task, foreign_key: true
      t.references :user_subject, foreign_key: true

      t.timestamps
    end
  end
end
