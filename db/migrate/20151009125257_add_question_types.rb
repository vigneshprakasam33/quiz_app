class AddQuestionTypes < ActiveRecord::Migration
  def change
    QuestionType.create(:name => "Multiple choice")
    QuestionType.create(:name => "True/False")
  end
end
