# Primary Actor: a regular user
# Goal: user gains information about a specific financial question
# Supporting Actors: a financial expert
# Preconditions: user is authenticated and authorized

class ExpertQuestioning
  def initialize(questioner:, question_text:)
    @questioner = questioner
    @question_text = question_text
    @expert = available_expert
  end

  # 1. User submits a Question to System
  # 2. An available expert is assigned to the question.
  #   2a.   No expert is available.
  #   2a.1  The user is notified that no expert is available.
  # 3. A notification is sent to the user that her question will be answered soon.
  # 4. The expert is notified of the unanswered question.
  def start
  end

  # 5. The expert submits an answer to the question.
  #   5a.  The expert determines that the question has already been answered.
  #   5a.1 The expert assigns the question to an existing answer.
  # 6. The user is notified of the answer to her question.
  def finish
  end

  def available_expert
    # TODO: Expert selection requires consideration.
    Expert.first_available
  end
end
