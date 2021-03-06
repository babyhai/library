class User < ApplicationRecord
  authenticates_with_sorcery!

  attr_accessor :password, :password_confirmation

  validates_presence_of :email, message: "邮箱不能为空"
  validates_format_of :email, message: "邮箱格式不合法",
    with: /\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*/,
    if: proc { |user| !user.email.blank? }
  validates :email, uniqueness: true
  validates_presence_of :name,  message: "用户名不能为空"
  validates :name, uniqueness: true

  validates_presence_of :password, message: "密码不能为空",
    if: :need_validate_password
  validates_presence_of :password_confirmation, message: "密码确认不能为空",
    if: :need_validate_password
  validates_confirmation_of :password, message: "密码不一致",
    if: :need_validate_password
  validates_length_of :password, message:"密码最短为8位", minimum: 8,
    if: :need_validate_password


  private
  def need_validate_passwordn
    # 当前记录是否为新记录 是否是新注册得用户id
    self.new_record? ||
        (!self.password.nil? || !self.password_confirmation.nil?)
  end

end
