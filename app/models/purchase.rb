class Purchase < ApplicationRecord
  # Associations
  belongs_to :author, class_name: 'User'
  has_and_belongs_to_many :categories

  # Methods

  # Validations

  # Callbacks
end
