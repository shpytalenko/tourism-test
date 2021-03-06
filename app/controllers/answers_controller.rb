class AnswersController < ApplicationController
 before_filter :authenticate_user!
  def index
    @answers = Answer.all
    @questions = Question.all
  end

  def show
    @answer = Answer.find(params[:id])
  end

  def new
    @answer = Answer.new
  end

  def create
    @answer = Answer.new(params[:answer])
    if @answer.save
      redirect_to answers_url, :notice => "Successfully created answer."
    else
      render :action => 'new'
    end
  end

  def edit
    @answer = Answer.find(params[:id])
  end

  def update
    @answer = Answer.find(params[:id])
    if @answer.update_attributes(params[:answer])
      redirect_to answers_url, :notice  => "Successfully updated answer."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @answer = Answer.find(params[:id])
    @answer.destroy
    redirect_to answers_url, :notice => "Successfully destroyed answer."
  end
end
