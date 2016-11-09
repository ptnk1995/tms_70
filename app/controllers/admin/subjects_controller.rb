class Admin::SubjectsController < AdminController
  load_and_authorize_resource

  def index
    @subjects = Subject.recent.page(params[:page]).per: Settings.length
  end

  def show
  end

  def new
    @subject = Subject.new
    @task = @subject.tasks.build
  end

  def create
    @subject = Subject.new subject_params
    if @subject.save
      flash[:success] = t "admin.subjects_admin.create_success"
      redirect_to admin_subjects_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @subject.update_attributes subject_params
      flash[:success] = t "admin.subjects_admin.update_success"
      redirect_to admin_subjects_path
    else
      render :edit
    end
  end

  def destroy
    if @subject.destroy
      flash[:success] = t "admin.subject_admin.delete_success"
      redirect_to admin_subjects_path
    else
      flash[:danger] = t "admin.subject_admin.delete_fail"
    end
  end

  private
  def subject_params
    params.require(:subject).permit :name, :description, :image,
      tasks_attributes: [:id, :name, :description, :_destroy]
  end
end
