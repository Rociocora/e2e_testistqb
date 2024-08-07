Feature: Welcome the student

Scenario: Enter a name with less than 10 characters
Given the student is on the ISTQB exam page
When the student enters the name "Rocio Mari"
And press start button
Then the student should see the message "Welcome Rocio Mari"


Scenario: Enter a name with more than 10 characters
Given the student is on the ISTQB exam page
When the student enters the name "MaríaDelMar"
And press start button
Then the student should see the message "Welcome MaríaDelMa"

Scenario: The name cannot be empty
Given the student is on the ISTQB exam page
When the student does not enter any name 
And press start button
Then the student should see the message "The Name field is required"