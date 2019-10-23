class Product < ApplicationRecord
    validates :name, presence: true, length: { minimum: 3 }
    validates :price, presence: true
end
