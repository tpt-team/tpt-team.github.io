class Document < ActiveRecord::Base
  belongs_to :category
  belongs_to :faculty

end
