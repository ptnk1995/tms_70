class UserCoursesController < ApplicationController
  before_action :authenticate_user!
  load_and_authorize_resource

  def index
    @user_courses = current_user.user_courses.page(params[:page])
      .per(Settings.per_page)
  end

  def show
    @course = @user_course.course
    @subjects = @course.subjects
  end
end
