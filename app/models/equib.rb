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


  def self.to_csv(options = {})
  CSV.generate(options) do |csv|
    csv << column_names
    all.each do |equib|
      csv << equib.attributes.values_at(*column_names)
    end
  end
end
end
