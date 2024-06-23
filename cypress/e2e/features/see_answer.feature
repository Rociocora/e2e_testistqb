Feature: See the correct answer

Scenario Outline: See answer 
Given the student is on the ISTQB exam page
When press shouw answer button <questionNumber>
Then he should see the correct answer <correctAnswer> on question <questionNumber>


Examples:
   | questionNumber   | correctAnswer              |
   | "1"              | "The correct answer is C"  |
   | "2"              | "The correct answer is B"  |
   | "3"              | "The correct answer is B"  |
   | "4"              | "The correct answer is C"  |
   | "5"              | "The correct answer is C"  |
   | "6"              | "The correct answer is A"  |
   | "7"              | "The correct answer is B"  |
   | "8"              | "The correct answer is B"  |
   | "9"              | "The correct answer is C"  |
   | "10"             | "The correct answer is A"  |

