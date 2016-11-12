module UserCourseHelper

  def show_status user_course
    case
    when user_course.progress?
      t "status.progress"
    when user_course.finished?
      t "status.finish"
    else
      t "status.pending"
    end
  end
end
