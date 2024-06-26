Feature: Correct question

Scenario: Select a correct answer
Given the student is on the ISTQB exam page,
When the student selects "A, B, or C",
And if the selected answer is correct,
Then the student clicks the correction button and should see the message "The answer is correct."