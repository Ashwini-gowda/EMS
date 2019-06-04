class Item < ApplicationRecord
  validates :item_id, :item_name, :item_brand, :item_model_number, :item_purchase_date, :present_holder_id, :previous_holder_id, presence: true
  
  has_many :previousholders, dependent: :destroy

  def name_with_id
    "#{item_name}-#{item_id}"
  end

  def self.search(search)
    if search
       where(['item_name LIKE ?', "%#{search}%"])
    else
      all
    end
  end
end
