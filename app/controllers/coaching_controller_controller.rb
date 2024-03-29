class CoachingControllerController < ApplicationController
  def answer
    @query = params[:query]
    @coach_answer = coach_answer_enhanced(@query)

  end

  def ask
  end


  private

  def coach_answer(your_message)
    # TODO: return coach answer to your_message
    if your_message == "I am going to work right now!"
      return "Nice boy!"
    elsif your_message[-1] == "?"
      return "Silly question, get dressed and go to work!"
    else
      return "I don't care, get dressed and go to work!"
    end
  end

  def coach_answer_enhanced(your_message)
    # TODO: return coach answer to your_message, with additional custom rules of yours!
    if your_message.upcase == your_message
      if your_message == "I am going to work right now!".upcase
        return "Nice <boy!></boy!>"
      elsif your_message[-1] == "?"
        return "I can feel your motivation! Silly question, get dressed and go to work!"
      else
        return "I can feel your motivation! I don't care, get dressed and go to work!"
      end
    else
      coach_answer(your_message)
    end
  end
end
