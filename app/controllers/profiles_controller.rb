class ProfilesController < ApplicationController
  before_filter :authenticate_user!, :only => [:pending, :edit, :update, :destroy]

  def pending
    @profiles = Profile.pending
  end

  def index
    @profiles = Profile.active
  end

  def contributors
    @profiles = Profile.contributors
  end

  def show
    @profile = Profile.find(params[:id])
  end

  def new
    @profile = Profile.new
  end

  def edit
    @profile = Profile.find(params[:id])
  end

  def create
    @profile = Profile.new(params[:profile])
    @profile.status = 0
    if @profile.save
      redirect_to action: "index", notice: 'Profile was successfully created.' 
    else
      render action: "new"
    end
  end

  def update
    @profile = Profile.find(params[:id])

    if @profile.update_attributes(params[:profile])
      redirect_to root_path, notice: 'Profile was successfully updated.'
    else
      render action: "edit"
    end
  end

  def destroy
    @profile = Profile.find(params[:id])
    @profile.destroy
    redirect_to root_path
  end
end
