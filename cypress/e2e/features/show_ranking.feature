Feature: Show ranking

Scenario: View ranking of 3 students by sorting their scores from highest to lowest.
Given the student is on the ISTQB exam page
When the three students will complete the exam:

| student   | questionNumber   | selectedAnswer |
| Mario     | 1                | C              |
| Mario     | 2                | B              |
| Mario     | 3                | B              |
| Mario     | 4                | C              |
| Mario     | 5                | C              |
| Mario     | 6                | A              |
| Mario     | 7                | B              |
| Mario     | 8                | B              |
| Mario     | 9                | C              |
| Mario     | 10               | A              |
| Rocio     | 1                |                |
| Rocio     | 2                |                |
| Rocio     | 3                |                |
| Rocio     | 4                |                |
| Rocio     | 5                |                |
| Rocio     | 6                |                |
| Rocio     | 7                |                |
| Rocio     | 8                |                |
| Rocio     | 9                |                |
| Rocio     | 10               |                |
| Manuel    | 1                | B              |
| Manuel    | 2                | A              |
| Manuel    | 3                | A              |
| Manuel    | 4                | B              |
| Manuel    | 5                | A              |
| Manuel    | 6                | B              |
| Manuel    | 7                | C              |
| Manuel    | 8                | C              |
| Manuel    | 9                | B              |
| Manuel    | 10               | B              |
And the students presses see final score button
And the students presses see ranking button

Then a list should appear with all the students who have taken the exam
And their scores ordered from highest to lowest score
And the ranking should show:

    | student      |score |
    | Mario        | 20   |
    | Rocio        |-10   |
    | Manuel       | 0    |
   

