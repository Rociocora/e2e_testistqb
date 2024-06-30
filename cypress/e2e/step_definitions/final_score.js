import {
    Given,
    When,
    Then,
  } from "@badeball/cypress-cucumber-preprocessor";


  When("the student select 4 correct answer, 5 incorrect answer and 1 empty answer:", (datatable) => {
    datatable.hashes().forEach(element => {
      cy.get('[data-cy="question'+element.questionNumber+'"]').select(element.selectedAnswer);   
    });
  }); 

  When("press the finish test button", () => {
    //hacer click en el boton pun
    cy.get('[data-cy="buttonfinalscore"]').click();
  }); 

  Then("the student should see the final message {string}", (messageFinalScore) => {
    cy.get('[data-cy="finalscore"]').should('have.text', messageFinalScore);
  }); 
