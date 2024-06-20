import {
    Given,
    When,
    Then,
} from "@badeball/cypress-cucumber-preprocessor";

Given("the student visit istqb test page", () => {

    //Visitar una pagina web
    //cy.visit("https://rociocora.github.io/istqb_online_test/")

    /*Borrar todas las cookies. Por defecto ya se borran en cypress antes de iniciar el test por lo que no suele 
    ser necesario usarlo.
    cy.clearCookies();*/

    //Cuando esta definida en cypress.config.js la baseUrl
    cy.visit("/")

    //Coger un elemento de la pag con get
  
    //por atributo
    cy.get('a[href-"#welcome"]');

    //1.Mas recomendadad, por data-test o data.cy
    cy.get('data-cy="welcomemenulink"')
    
    //2.Menos recomendada pero bien, por id
    cy.get('*welcomelink');
    
    //3.Por clase
    cy.get(".nav-link");

    //4. Nada recomendada, por tipo de elemento
    cy.get('a');


});