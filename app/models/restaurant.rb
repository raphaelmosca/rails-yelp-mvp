class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :delete_all

  validates :address, :name, presence: true
  validates :category, inclusion: { in: %w(chinese italian french japanese belgian) }

end
