class Card < ApplicationRecord
  belongs_to :user

  def each_price
    if self.quantity != nil
      return "#{self.quantity.to_f * 2}  ฿"
    else
      return "No price "
    end
  end
end
