class Card < ApplicationRecord
  belongs_to :user , optional: true
  belongs_to :stock , optional: true
  after_destroy :after_destroy
  validate :check

  def each_price
    if self.quantity != nil
      return "#{self.quantity.to_f * 2}  ฿"
    else
      return "No price "
    end
  end

  def after_destroy
    quantity = self.quantity.to_i + Stock.find(stocks_id).amount.to_i
    Stock.find(stocks_id).update(amount: quantity)
  end

  def cal_stock
    stock = Stock.find(stocks_id).amount.to_i - self.quantity.to_i
    Stock.find(stocks_id).update(amount: stock) 
  end

  def check
    stock  = Stock.find(stocks_id).amount
    if stock.to_i  < self.quantity.to_i
      errors.add(:quantity , 'พอมึงสั่งเกินไปแล้ววววววว')
    else
      cal_stock
    end
  end
end
