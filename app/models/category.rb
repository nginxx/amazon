class Category < ApplicationRecord
  has_many :books
  validates :title, presence: true, uniqueness: { case_sensitive: false }
end
