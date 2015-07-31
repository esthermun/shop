# namespace :db do 
# 	desc "Erase and fill database"
# 	task :populate => :environment do
# 		require 'populator'
# 		require 'faker'

# 		[Product].each(&:delete_all)

# 		Product.populate 15 do |product|
# 			product.name = Faker::Commerce.product_name
# 			product.quantity = Faker::Number.between(1,10)
# 			product.description = Faker::Lorem.paragraph(2)
# 			#product.image = Faker::Avatar.image
# 			product.price = Faker::Commerce.price
# 			#product.status = Faker::Number.between(0,1)
# 			product.created_at = Faker::Time.between(1.year.ago, Time.now)
# 		end
# 	end
# end
