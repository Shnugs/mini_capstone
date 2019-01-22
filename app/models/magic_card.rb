class MagicCard < ApplicationRecord
  def is_discounted?
    price <= 5
  end

  def tax
    (price * 0.1025)
  end

  def total
    tax + price
  end
end
