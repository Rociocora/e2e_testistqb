Feature: Correct question

Scenario Outline: Select a correct answer
Given the student is on the ISTQB exam page
When the user select answer <selectedAnswer> on question <questionNumber>
And the user press correct button on question <questionNumber>
Then the user should see the message <expectedMessage> on question <questionNumber>

Examples:
   | questionNumber   | selectedAnswer   | expectedMessage |
   | "1"              | "C"              | "The answer is correct. Your score is 2." |
   | "1"              | "A"              | "The answer is not correct. Your score is -1." |
   | "1"              | ""               | "The answer is not correct. Your score is 0." |
   | "2"              | "B"              | "The answer is correct. Your score is 2." |
   | "2"              | "A"              | "The answer is not correct. Your score is -1." |
   | "2"              | ""               | "The answer is not correct. Your score is 0." |
   | "3"              | "B"              | "The answer is correct. Your score is 2." |
   | "3"              | "A"              | "The answer is not correct. Your score is -1." |
   | "3"              | ""               | "The answer is not correct. Your score is 0." |
   | "4"              | "C"              | "The answer is correct. Your score is 2." |
   | "4"              | "A"              | "The answer is not correct. Your score is -1." |
   | "4"              | ""               | "The answer is not correct. Your score is 0." |
   | "5"              | "C"              | "The answer is correct. Your score is 2." |
   | "5"              | "A"              | "The answer is not correct. Your score is -1." |
   | "5"              | ""               | "The answer is not correct. Your score is 0." |
   | "6"              | "A"              | "The answer is correct. Your score is 2." |
   | "6"              | "B"              | "The answer is not correct. Your score is -1." |
   | "6"              | ""               | "The answer is not correct. Your score is 0." |
   | "7"              | "B"              | "The answer is correct. Your score is 2." |
   | "7"              | "A"              | "The answer is not correct. Your score is -1." |
   | "7"              | ""               | "The answer is not correct. Your score is 0." |
   | "8"              | "B"              | "The answer is correct. Your score is 2." |
   | "8"              | "A"              | "The answer is not correct. Your score is -1." |
   | "8"              | ""               | "The answer is not correct. Your score is 0." |
   | "9"              | "C"              | "The answer is correct. Your score is 2." |
   | "9"              | "A"              | "The answer is not correct. Your score is -1." |
   | "9"              | ""               | "The answer is not correct. Your score is 0." |
   | "10"             | "A"              | "The answer is correct. Your score is 2." |
   | "10"             | "C"              | "The answer is not correct. Your score is -1." |
   | "10"             | ""               | "The answer is not correct. Your score is 0." |