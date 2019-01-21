class MagicCard < ApplicationRecord
  def is_discounted?
    if price <= 5
      true
    else
      false
    end
  end

  def tax
    (price * 0.1025).round(2)
  end

  def total(tax)
    tax + price
  end
end
