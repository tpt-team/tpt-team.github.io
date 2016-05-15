class Document < ActiveRecord::Base
  belongs_to :category
  belongs_to :faculty
  belongs_to :user

  has_attached_file :document, :path => ':rails_root/public/system/documents/:attachment/:id/:style/:filename',
    :url => '/system/documents/:attachment/:id/:style/:filename'
  validates_attachment_presence :document
  do_not_validate_attachment_file_type :document

  def increment(by = 1)
    self.downloads ||= 0
    self.downloads += by
    self.save
  end
end
