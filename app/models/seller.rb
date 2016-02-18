class Seller < ActiveRecord::Base
  belongs_to :adress
  belongs_to :company
end
