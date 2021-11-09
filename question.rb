class Question 
  
  attr_reader :num1, :num2
  
  def initialize 
    @num1 = rand(1...21)
    @num2 = rand(1...21)
  end

  def question_for_user
    "Whats #{num1} + #{num2} equal?"
  end
end

# question1 = Question.new 
# puts question1.question_for_user
# puts question1.num1
# puts question1.num2


# question2 = Question.new 
# puts question2.question_for_user
# puts question2.num1
# puts question2.num2
