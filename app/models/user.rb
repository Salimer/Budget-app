class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # Associations
  has_many :categories
  has_many :purchases

  # Attributes
  attribute :name, :string

  # Callbacks

  # Validations
  validates :name, presence: true

  # Mehtods
end
