class BrandController < ApplicationController
	def index
		@brand = Brand.all
	end

	def show
		@brand = Brand.find(params[:id])
	end

	def new
		@brand = Brand.new
  		@brand = Brand.all
	end

	def create
		@brand = Brand.new(params[:brand])
	end
=begin
	def create
		if current_user.is_admin?
			create_params = admin_brand_params
		else
			create_params = brand_params
		end
		Brand.create(create_params)
	end

	private

	def brand_params
		params.require(:brand).permit(:name)
	end

	def admin_brand_params
		params.require(:brand).permit(:name, :logo, :email)
	end
=end
end
=begin
Brand Logo - High Res 
	Svg
	PNG Transparent
	JPG
	Social Media Sized
Colors
	Primary Color
	Secondary Color
	Color Pallet & Picker
Font
	Primary Font
	Secondary Font
	Downloadable Files
	Font Link
	H1, H2, H3, H4, H5, H6, P
		Font
		Size
		Styling
Brand Accents
	Illustrations
	Borders
	Buttons
Templates
	Social Media
	Email
	Display Ads
Video
	Brand Video
=end