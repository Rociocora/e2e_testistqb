import {
    Given,
    When,
    Then,
  } from "@badeball/cypress-cucumber-preprocessor";


  When('the three students will complete the exam:', (dataTable) => {
    const students = dataTable.hashes();
    students.forEach(({ student, questionNumber, selectedAnswer }) => {
        if (selectedAnswer) {
            cy.get(`[data-cy="question${questionNumber}"]`).select(selectedAnswer);
        }
    });
    cy.get('[data-cy="buttonfinalscore"]').click(); // Calculate the final score
});

When('the student presses the show ranking button', () => {
    cy.get('[data-cy="buttonranking"]').click();
});


Then('the student should see a message with the list of the rest of the students and their scores be sorted from highest to lowest {string}', (messageRanking) => {
    const expectedRanking = messageRanking.split(',').map(item => item.trim());
    cy.get('#listaRanking p', { timeout: 10000 }).should('have.length', expectedRanking.length);
    cy.get('#listaRanking p').each((element, index) => {
        expect(element.text().trim()).to.equal(expectedRanking[index]);
    });
})
