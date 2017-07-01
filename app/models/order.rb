class Order < ApplicationRecord
  validates :billing_name, presence: true
  validates :billing_address, presence: true
  validates :shipping_name, presence: true
  validates :shipping_address, presence: true
  belongs_to :user
  has_many :product_lists

  def pay!
    self.update_columns(is_paid: :true)
  end

  def set_payment_method(method)
    self.update_columns(payment_method: :method)
  end

end
