class Category < ApplicationRecord
  # Associations
  belongs_to :user
  has_and_belongs_to_many :purchases

  # Methods

  # Validations

  # Callbacks
end
