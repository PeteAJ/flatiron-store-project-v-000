class Item < ActiveRecord::Base
 belongs_to :category
  has_many :line_items

  def self.available_items
    items = []
    Item.all.map { |x| items << x if x.inventory > 0 }
    items
  end

  def price_display
    "$#{price/100}"
  end

  
end
