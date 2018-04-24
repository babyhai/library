class Category < ApplicationRecord
  # 分类模型
  validates :title, presence: { message: "名称不能为空" }
  validates :title, uniqueness: { message: "名称不能重复" }

  has_ancestry
  has_many :prducts, dependent: :destroy
  before_validation :correct_ancestry

  private
  def correct_ancestry
    self.ancestry = nil if self.ancestry.blank?
  end


end
