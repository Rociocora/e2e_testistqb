import {
    Given,
    When,
    Then,
  } from "@badeball/cypress-cucumber-preprocessor";


 /* When('the three students will complete the exam:', (dataTable) => {
    const students = dataTable.hashes();
    students.forEach(({ student, questionNumber, selectedAnswer }) => {
        if (selectedAnswer) {
            cy.get(`[data-cy="question${questionNumber}"]`).select(selectedAnswer);
        }
    });
    cy.get('[data-cy="buttonfinalscore"]').click(); // Calculate the final score
});*/

When("the three students will complete the exam:", (datatable) => {

    datatable.hashes().forEach(element => {
    cy.get('[data-cy="question'+element.questionNumber+'"]').select(element.selectedAnswer)
        
    });
});

When('the students presses see final score button', () => {
    cy.get('[data-cy="buttonfinalscore"]').click(); 
})

When('the students presses see ranking button', () => {
    cy.get('[data-cy="buttonranking"]').click();
})

Then("a list should appear with all the students who have taken the exam", () => {
      cy.get('[data-cy="showRanking"]').should('be.visible');
});
  
Then("their scores ordered from highest to lowest score", () => {
});
  
Then("the ranking should show:", () => {
    cy.get('[data-cy="showRanking"]').should('contain', '20');
    cy.get('[data-cy="showRanking"]').should('contain', '0');
    cy.get('[data-cy="showRanking"]').should('contain', '-10');
});



