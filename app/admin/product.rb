ActiveAdmin.register Product do
	# scope :low_inventory
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end
	index do
		column :name
		column :price, :sortable => :price do |product|
			div :class => "price" do
				number_to_currency product.price
			end
		end
		column :quantity
		column :status
		column :created_at
		actions
	end

end
