class Document < ActiveRecord::Base
  belongs_to :category
  belongs_to :faculty

  has_attached_file :document
  validates_attachment_presence :document
  do_not_validate_attachment_file_type :document
end
