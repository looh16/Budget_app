class Group < ApplicationRecord
  belongs_to :author, class_name: 'User'

  validates :name, presence: true, length: { maximum: 50, minimum: 3 }
  validates :icon, presence: true
end
