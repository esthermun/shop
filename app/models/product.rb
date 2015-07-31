class Product < ActiveRecord::Base
	has_many :product_images, :dependent => :destroy

	accepts_nested_attributes_for :product_images, :reject_if => lambda { |t| t['product_iamge'].nil? }

end
