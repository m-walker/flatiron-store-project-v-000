class Item < ActiveRecord::Base
  belongs_to :category
  has_many :line_items

  def self.available_items
    all.map{|item| item unless item.inventory == 0 }.reject(&:nil?)
  end

end
