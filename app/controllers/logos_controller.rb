class LogosController < ApplicationController
  def new
  	@logo = Logo.new(:profile_id => params[:profile_id])
  end

  def create
  	@logo = Logo.new(params[:logo])
  	if @logo.save
  		flash[:notice] = "Successfully created profile"
  		redirect_to @logo.profile
  	else
  		render :action => 'new'
  	end
  end

  def edit 
  	@logo = Logo.find(params[:id])
  end

  def update
  	@logo = Logo.find(params[:id])
  	if @logo.update_attributes(params[:logo])
  		flash[:notice] = "Successfully updated logo"
  		redirect_to @logo.profile
  	else
  		render :action => 'edit'
  	end
  end

  def destroy
  	@logo = Logo.find(params[:id])
  	@logo.destroy
  	flash[:notice] = "Successfully destroyed logo"
  	redirect_to @logo.profile
  end
end
