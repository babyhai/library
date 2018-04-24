class Category < ApplicationRecord
  has_many :prducts, dependent: :destroy

end
