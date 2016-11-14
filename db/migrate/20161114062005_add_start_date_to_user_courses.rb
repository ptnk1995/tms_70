class AddStartDateToUserCourses < ActiveRecord::Migration[5.0]
  def change
    add_column :user_courses, :start_date, :datetime
  end
end
