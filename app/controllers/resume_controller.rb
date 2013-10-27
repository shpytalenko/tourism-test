class ResumeController < ApplicationController
  helper :headshot
  before_filter :authenticate_user!
  include Wicked::Wizard
  
  steps :start_page, :make_photo, :answer_question, :print_resume


 def show
    @user = current_user
    render_wizard
 end

 def update
    @user = current_user
    render_wizard
  end


end
