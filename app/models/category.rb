class Category < ApplicationRecord
  # 分类模型
  has_ancestry
  has_many :prducts, dependent: :destroy



end
