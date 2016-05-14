class AddFacultyIdToDocuments < ActiveRecord::Migration
  def change
    add_column :documents, :faculty_id, :integer
  end
end
