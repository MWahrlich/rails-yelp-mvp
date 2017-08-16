class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  validates :name, uniqueness: true, presence: true
  validates :address, presence: :true
  validates :category, presence: true
  validates :category, acceptance: { accept: ["chinese", "italian", "mexican", "german", "french", "japanese", "belgian" ]}
end
