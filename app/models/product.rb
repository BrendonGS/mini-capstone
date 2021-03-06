class Product < ApplicationRecord
  belongs_to :supplier
  has_many :images
  has_many :orders, through: :carted_products
  has_many :product_catergoies
  has_many :catergoies, through: :product_catergoies

  has_many :carted_products


  validates :name, presence: true 
  validates :name, uniqueness: true
  validates :name, length: {maximum: 254}

  validates :price, numericality: {less_than: 100_000_000, greater_than: 0}

  validates :description, presence: true
  validates :description, length: {in: 10..300}


  belongs_to :supplier 
  # def supplier
  #   Supplier.find_by(id: self.supplier_id)
  # end

  has_many :images
  def images
    Image.where(product_id: self.id)
  end

  def is_discounted?
    price < 2000
  end

  def tax
    price * 0.09
  end

  def total
    price + tax
  end

end
