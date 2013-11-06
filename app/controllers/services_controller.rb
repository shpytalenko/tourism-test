class ServicesController < ApplicationController
 before_filter :authenticate_user!
  def index
    @services = Service.all
    @questions = Question.all
  end

  def show
    @service = Service.find(params[:id])
  end

  def new
    @service = Service.new
  end

  def create
    @service = Service.new(params[:service])
    if @service.save
      redirect_to services_url, :notice => "Successfully created service."
    else
      render :action => 'new'
    end
  end

  def edit
    @service = Service.find(params[:id])
  end

  def update
    @service = Service.find(params[:id])
    if @service.update_attributes(params[:service])
      redirect_to services_url, :notice  => "Successfully updated service."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @service = Service.find(params[:id])
    @service.destroy
    redirect_to services_url, :notice => "Successfully destroyed service."
  end
end
