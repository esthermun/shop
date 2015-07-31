class ProductsController < ApplicationController
  	before_action :set_product, only: [:show, :edit, :update, :destroy]
	#respond_to :json
	
	def index
  		@products = Product.all
  		#respond_with Product.all
  	end

	def show
		#respond_with Product.find(params[:id])
		set_product
  	end

	def new
	  @product = Product.new
	  #@product.product_images.build
	end

	def create
		#respond_with Product.create(params[:product])
  		@product = Product.new(product_params)

  		if @product.save
  			flash[:notice] = "Product was successfully created."
  			redirect_to @product
  		else	
  			render 'new'
  		end
  		# respond_to do |format|
  		# 	if @product.save
  		# 		format.html { redirect_to @product, notice: 'Product was successfully created.'}
  		# 		format.json { render :show, status: :created, location: @product }
  		# 	else
  		# 		format.html { render :new }
    #     		format.json { render json: @product.errors, status: :unprocessable_entity }
  		# 	end
  		# end
  	end

	def edit
		#@product.product_images.build
	end

	def update
		#respond_with Product.update(params[:id], params[:product])
		if @product.update(product_params)
			flash[:notice] = "Product was successfully updated."
			redirect_to @product
		else
			render 'edit'
		end
  		# respond_to do |format|
    # 		if @product.update(product_params)
    # 			format.html { redirect_to @product, notice: 'Product was successfully updated.' }
    #     		format.json { render :show, status: :ok, location: @product }
    #   		else
    #     		format.html { render :edit }
    #     		format.json { render json: @product.errors, status: :unprocessable_entity }
    #   		end
    # 	end
  	end

	def destroy
		#respond_with Product.destroy(params[:id])
		if @product.destroy
			flash[:notice] = "Product was successfully destroyed."
			redirect_to products_url
		end
  		# @product.destroy
    # 		respond_to do |format|
    # 		format.html { redirect_to products_url, notice: 'Product was successfully destroyed.' }
    # 		format.json { head :no_content }
    # 	end
  	end

	private
  	def set_product
  		@product = Product.find(params[:id])
  	end

  	def product_params
  		params.require(:product).permit(:name, :description, :quantity, :price, :status, product_images_attributes: [:product_image, :product_image_content_type, :product_image_file_name, :tempfile, :product_image_file_size, :product_image_updated_at, :_destroy])
  	end

end
