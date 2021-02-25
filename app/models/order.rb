class Order < ApplicationRecord

  def self.start_dates
    Order.all.pluck(:start_time).map(&:to_date)
  end

end
