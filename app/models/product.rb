class Product < ActiveRecord::Base
	validates :name, presence: true, 
					 length: { minimum: 5, maximum: 50 }	
	validates :description, presence: true, 
							length: { minimum: 10, maximum: 350 } 
	validates :price, presence: true,
					  numericality: true 
	validates :status, presence: true,
						numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 1 }
	validates :quantity, presence: true,
						 numericality: { only_integer: true, greater_than: 0 }
end
