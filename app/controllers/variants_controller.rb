class VariantsController < ApplicationController
 before_filter :authenticate_user!
  def index
    @variants = Variant.all
  end

  def show
    @variant = Variant.find(params[:id])
  end

  def new
    @variant = Variant.new
  end

  def create
    @variant = Variant.new(params[:variant])
    if @variant.save
      redirect_to answers_url, :notice => "Successfully created variant."
    else
      render :action => 'new'
    end
  end

  def edit
    @variant = Variant.find(params[:id])
  end

  def update
    @variant = Variant.find(params[:id])
    if @variant.update_attributes(params[:variant])
      redirect_to answers_url, :notice  => "Successfully updated variant."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @variant = Variant.find(params[:id])
    @variant.destroy
    redirect_to answers_url, :notice => "Successfully destroyed variant."
  end
end
