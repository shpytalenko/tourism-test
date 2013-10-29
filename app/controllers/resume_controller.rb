class ResumeController < ApplicationController
  helper :headshot
 # before_filter :authenticate_user!
  include Wicked::Wizard
  
  steps :start_page, :make_photo, :info, :question1, :question2, :question3, :question4,  :print_resume


 def show
  #  @user = current_user
  case step
  when :make_photo
    
  end  
   render_wizard
 end

 def update
   # @user = current_user
    render_wizard
  end


end
