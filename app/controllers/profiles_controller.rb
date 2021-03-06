class ProfilesController < ApplicationController
  def index
  	profile = Profile.all
  end

  def show
  	@profile = Profile.find[:id]
  end

  def new
  	@profile = Profile.new
  end

  def create
  	@profile = Profile.new(params[:profile])
  	if @profile.save
  		flash[:notice] = "Successfully created profile"
  		redirect_to @profile
  	else
  		render :action => 'new'
  	end
  end

  def edut
  	@profile = Profile.find(params[:id])
  end
  
  def update
  	@profile = Profile.find(params[:id])
  	if @profile.update_attributes(params[:profile])
  		flash[:notice] = "Successfully updated profile"
  		redirect_to profile_url
  	else
  		render :action => 'edit'
  	end
  end

  def destroy
  	@profile = Profile.find(params[:id])
  	@profile.destroy
  	flash[:notice] = "Successfully destroyed profile"
  	redirect_to profiles_url
end
