class Category < ApplicationRecord
  # 分类模型
  validates :title, presence: { message: "名称不能为空" }
  validates :title, uniqueness: { message: "名称不能重复" }

  #删除一级分类，所属的二级分类也删除
  has_ancestry orphan_strategy: :destroy

  has_many :prducts, dependent: :destroy
  before_validation :correct_ancestry

  private
  def correct_ancestry
    self.ancestry = nil if self.ancestry.blank?
  end


end
