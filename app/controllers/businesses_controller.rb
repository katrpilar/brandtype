class BusinessesController < ApplicationController
  def index
  	@business = Business.all
  end

  def show
  	@business = Business.find(params[:id])
  end

  def new
  	@business = Business.new
  	#@businesses = Business.all
  end

  def create
  	@business = Business.new(params[:business])

  	if @business.save
  		redirect_to new_business_path
  	end
  end
end
