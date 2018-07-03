class Author < ActiveRecord::Base
  validates :name, presence: true, length: { is: 10 }
end
