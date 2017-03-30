class Repair < ApplicationRecord

  belongs_to :equib

  def self.total_price
    sum = 0
    repairs.each do |repair|
      if repair.fees.present?
        sum += self.fees

      end
    end
    sum
  end
end
