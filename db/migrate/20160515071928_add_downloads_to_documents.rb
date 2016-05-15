class AddDownloadsToDocuments < ActiveRecord::Migration
  def change
    add_column :documents, :downloads, :integer, default: 0
  end
end
