class Product < ApplicationRecord
  belongs_to :supplier
  has_many :orders
  has_many :images

  validates :name, presence: true
  validates :name, uniqueness: true
  validates :name, length: {maximum: 254}

  validates :price, presence: true
  validates :price, numericality: {greater_than: 0, less_than: 1_000_000}

  validates :description, presence: true
  validates :description, length: {in: 10..300}

  def is_discounted?
    price <= 5
  end

  def tax
    (price * 0.1025).round(2)
  end

  def total
    tax + price
  end
end
