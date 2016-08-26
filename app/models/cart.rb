class Cart < ActiveRecord::Base
  has_many :line_items
  has_many :items, through: :line_items
  belongs_to :user

  def total
    sum = 0
    items.each do |item|
      sum += item.price
    end
    sum
  end

  def add_item(item_id)
    LineItem.find_by(cart_id: self.id, item_id: item_id) ? LineItem.find_by(cart_id: self.id, item_id: item_id) : LineItem.new(cart_id: self.id, item_id: item_id)
  end
end
