class PagesController < ApplicationController
  before_filter :authenticate_user!
  helper :headshot
  def home
  end

end
