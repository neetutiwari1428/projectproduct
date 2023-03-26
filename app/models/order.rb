class Order < ApplicationRecord
  belongs_to :merchant
  belongs_to :product
  belongs_to :itemcart
end
