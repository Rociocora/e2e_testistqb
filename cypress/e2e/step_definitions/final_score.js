import {
    Given,
    When,
    Then,
  } from "@badeball/cypress-cucumber-preprocessor";


  When("the student select 4 correct answer, 5 incorrect answer and 1 empty answer", (datatable) => {
    data.table
    cy.get('[data-cy="question'+questionnumber+'"]').select(selectedAnswer);

  }); 