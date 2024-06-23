import {
    Given,
    When,
    Then,
  } from "@badeball/cypress-cucumber-preprocessor";

  When("press shouw answer button {string}", (questionnumber) => {

    cy.get('[data-cy="show-correct-answer' + questionnumber +'"]').click();

  }); 

  Then("he should see the correct answer {string} on question {string}", (correctAnswer,questionnumber) => {

    cy.get('[data-cy="messagecorrectanswer'+questionnumber+'"]').should('have.text',correctAnswer);

  }); 