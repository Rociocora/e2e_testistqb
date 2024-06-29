Feature: Correct question

Scenario Outline: Select a correct answer
Given the student is on the ISTQB exam page
When the user selected answer <selectedAnswer> on question <questionNumber>
And the user press correct button on question <questionNumber>
Then the user should see the message <expectedMessage> on question <questionNumber>

Examples:
   | questionNumber   | selectedAnswer   | expectedMessage |
   | "1"              | "C"       | "The answer is correct. Your score is 2." |
   | "1"              | "A"       | "The answer is not correct. Your score is -1." |
   | "1"              | "--"             | "The answer is not correct. Your score is 0." |