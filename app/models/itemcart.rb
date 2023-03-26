class Itemcart < ApplicationRecord
  belongs_to :product
  belongs_to :merchant
end
