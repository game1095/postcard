class Stock < ApplicationRecord
  has_many :card
  def stock_name_wtih_amount
      "แผนก #{self.name} | จำนวนคงเหลือ #{self.amount} ฉบับ"
  end
end
