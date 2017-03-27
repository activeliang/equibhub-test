class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  def total_price
    sum = 0
      if self.price.present?
        sum += self.price
      end
    sum
  end
end
