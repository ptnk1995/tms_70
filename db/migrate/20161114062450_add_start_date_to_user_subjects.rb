class AddStartDateToUserSubjects < ActiveRecord::Migration[5.0]
  def change
    add_column :user_subjects, :start_date, :datetime
  end
end
