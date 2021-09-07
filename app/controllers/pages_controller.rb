class PagesController < ApplicationController
  def home
  end

  def coach
    @question = params['form-input'].capitalize
    @answer = "I don\'t care, get dressed and go to work!"
    if @question == 'I am going to work'
      @answer = 'Great!'
    elsif @question[-1] == '?'
      @answer = 'Silly question, get dressed and go to work!'
    end
  end
end
