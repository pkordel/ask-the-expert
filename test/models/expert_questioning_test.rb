require "test_helper"

class ExpertQuestioningTest < ActiveSupport::TestCase
  test "is initializes with a questioner and a question" do
    questioner = Object.new
    question = "What is the meaning of life?"
    assert ExpertQuestioning.new(questioner: questioner, question_text: question)
  end

  test "it errors without a questioner and question" do
    assert_raise ArgumentError, %r{0 for 2} do
      ExpertQuestioning.new
    end
  end

  # when starting the questioning process
  test "it assigns an available expert to the question" do
  end

  test "it notifies the user that her question will be answered soon" do
  end

  test "it notifies the expert of the unanswered question" do
  end

  # when finishing the questioning process
  test "it stores the answer to the question" do
  end

  test "it notifies the user of the answer to her question" do
  end
end
