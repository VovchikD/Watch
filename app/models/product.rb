class Product < ApplicationRecord
    validates :title, presence: true
    validates :price, presence: true

    has_many :galleries

    belongs_to :category

    has_many :related_product
    has_many :related, through: :related_product

    enum hit: { hit: 1, not_hit: 0 }
    #scope :active, -> { where(status: 1)}
end
