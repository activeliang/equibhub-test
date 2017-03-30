class Equib < ApplicationRecord

  has_many :repairs
  mount_uploader :image, ImageUploader

  def self.total_price
    sum = 0
    @equibs = Equib.all
    @equibs.each do |equib|
      if equib.price.present?
        sum = sum + equib.price
      end
    end
    sum
  end
end
