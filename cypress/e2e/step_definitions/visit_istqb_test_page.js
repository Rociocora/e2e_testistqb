import {
    Given,
    When,
    Then,
} from "@badeball/cypress-cucumber-preprocessor";

Given("the student visit istqb test page", () => {

    //Visitar una pagina web
    //cy.visit("https://rociocora.github.io/istqb_online_test/")

    //Cuando esta definida en cypress.config.js la baseUrl
    cy.visit("/")

});