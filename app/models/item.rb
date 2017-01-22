class Item < ApplicationRecord
  belongs_to :user
  belongs_to :category

  has_attached_file :item_img, styles: { :item_index  =>"300x300>", :item_show => "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :item_img, content_type: /\Aimage\/.*\z/

end
