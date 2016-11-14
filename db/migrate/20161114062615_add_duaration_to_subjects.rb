class AddDuarationToSubjects < ActiveRecord::Migration[5.0]
  def change
    add_column :subjects, :duaration, :integer
  end
end
