class AddEndDateToUserCourses < ActiveRecord::Migration[5.0]
  def change
    add_column :user_courses, :end_date, :datetime
  end
end
