Feature: Final score

Scenario: Select finish test with correct, incorrect, and blank answers
Given the student is on the ISTQB exam page
When the student select 4 correct answer, 5 incorrect answer and 1 empty answer:

   | questionNumber   | selectedAnswer |
   | 1                | C              |
   | 2                |                |
   | 3                | A              |
   | 4                | C              |
   | 5                | A              |
   | 6                | A              |
   | 7                | A              |
   | 8                | B              |
   | 9                | A              |
   | 10               | C              |
And press the finish test button
Then the student should see the final message "Your Total Score Is: 3"



