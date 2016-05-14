class AddDocumentToDocuments < ActiveRecord::Migration
  def up
    add_attachment :documents, :document
  end

  def down
    remove_attachment :documents, :document
  end
end
