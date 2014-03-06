class ResumeController < ApplicationController
  helper :headshot
  # before_filter :authenticate_user!
  include Wicked::Wizard
  
  steps :start_page ,:info, :question1, :question2, :question3, :question4, 
       :question5, :question6, :question7, :question8, :question9, :question10, :question11,
       :question12, :results


 def show
  #  @user = current_user
  case step
  when :info
    @person = Person.create
    cookies[:person_id] = @person.id
  end  
   render_wizard
 end

 def update
  @person = Person.find(cookies[:person_id])
  case step
    when :info
      @person.attributes = params[:person]
    when :question1
      @person.variants << Variant.find_by_id(params[:variant].to_i)
    when :question2
      @person.variants << Variant.find_by_id(params[:variant].to_i)
    when :question3
      @person.variants << Variant.find_by_id(params[:variant].to_i)
    when :question4
      @person.variants << Variant.find_by_id(params[:variant].to_i)
    when :question5
      @person.variants << Variant.find_by_id(params[:variant].to_i)
    when :question6
      @person.variants << Variant.find_by_id(params[:variant].to_i)
    when :question7
      @person.variants << Variant.find_by_id(params[:variant].to_i)
    when :question8
      @person.variants << Variant.find_by_id(params[:variant].to_i)
    when :question9
      @person.variants << Variant.find_by_id(params[:variant].to_i)
    when :question10
      @person.variants << Variant.find_by_id(params[:variant].to_i)
    when :question11
      @person.variants << Variant.find_by_id(params[:variant].to_i)
    when :question12
      @person.variants << Variant.find_by_id(params[:variant].to_i)
    end
     
   render_wizard @person
  end

#def create

#  case step
# when :info
#   @person = Person.create
# end 
# 
#   redirect_to wizard_path(steps.first, :product_id => @product.id)
# end


end
