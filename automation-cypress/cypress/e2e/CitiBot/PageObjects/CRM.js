//import { url } from 'inspector';

const XLSX = require('xlsx');
const path = require('path');
//let excelFileName;
let ticketText;

class verifyCRM {

    loginEmail_Accela = '(//div/input[@tabindex="1"])[1]';
    loginPassword_Accela = '(//input[@id="inputPassword"])[1]';
    loginButton_Accela = '(//input[@value="Login"])[1]';
    accelaPage_keywordFilter = '//div/span[text()="Keyword"]';
    accelaPage_keywordFilterText = '(//div[@class="search-bar"]/div[2]/input)[5]';
    accelaPage_ticketDescription = '//table[@id="DataTables_Table_0"]/tbody/tr[1]/td[contains(@class,"description")]/div';
    accelaPage_clickUserIcon = '//i[@class="icon-user icon-white"]'; // xpath needs to change 
    accelaPage_clickLogout = '//a[text()="Log Out"]';
    trello_loginIcon = '(//div/a[text()="Log in"])[1]';
    trello_email = '//input[@id="username"]';
    trello_password = '//input[@id="password"]';
    trello_clickContinueButton = '//span[text()="Continue"]';
    trello_loginButton = '//span[text()="Log in"]';
    trello_workspaceButton = '//button[@title="Workspaces"]';
    trello_sourcefuseWorkspace = '(//a/p[contains(text(),"sourcefuse-citibot")])';
    trello_sourcefuseRegressionBoard = '//div[text()="regression"]';
    trello_inboundListIcon = '(//h2[text()="inbound"]//following::button[@data-testid="list-edit-menu-button"])[1]';
    trello_inboundListSort = '//a[text()="Sort by…"]';
    trello_inboundListSortNewestFirst = '//a[text()="Date created (newest first)"]';
    trello_ticketInList = '(//div/h2[text()="inbound"]//following::ol/li)[1]';
    trello_ticketText = '(//p/strong[text()="MESSAGE 1"]//following::ul/li/p)[1]';
    trello_closeTicketDialog = '//*[contains(@class, "icon-close") and @aria-label="Close dialog"]';
    trello_profileLink = '//div[@data-testid="header-member-menu-avatar"]';
    trello_logoutButton = '//button[@data-testid="account-menu-logout"]';
    trello_mainLogout = '//span[text()="Log out"]';
    trello_verifyAyudaBoard = '//h1[text()="AYUDA | AYUDA"]';


    navigateToAccelaCRM() {
        cy.readFile('cypress/fixtures/Accela_UserCreds.json').then(data => {
           cy.visit(data.Accela_Url);
          })
        cy.wait(5000);
        cy.title().should('include', 'Accela CRM - Login');
        //Username entered
        cy.xpath(this.loginEmail_Accela).should('be.visible');
        cy.xpath(this.loginEmail_Accela).click();
        cy.readFile('cypress/fixtures/Accela_UserCreds.json').then(data => {
          cy.xpath(this.loginEmail_Accela).type(data.email);
       })
        //Password entered  
        cy.xpath(this.loginPassword_Accela).should('be.visible');
        cy.xpath(this.loginPassword_Accela).click();
        cy.readFile('cypress/fixtures/Accela_UserCreds.json').then(data => {
        cy.xpath(this.loginPassword_Accela).type(data.password);
       })
        //click on login button
        cy.xpath(this.loginButton_Accela).click();
        //Enter filter text on keyword filter
        cy.wait(5000);
        cy.xpath(this.accelaPage_keywordFilter).click();
        cy.wait(5000);
        cy.fixture('utteranceName.json').then(data => {
        cy.xpath(this.accelaPage_keywordFilterText).type(data.verifyCRMName).type('{enter}');
        cy.wait(5000);
        cy.xpath(this.accelaPage_ticketDescription).invoke('text').then((descriptionText) => {
              expect(descriptionText).to.contains(data.verifyCRMName);
            });
      })
        cy.xpath(this.accelaPage_clickUserIcon).click();
        cy.xpath(this.accelaPage_clickLogout).click();   
    }

    navigateToTrelloCRM(){
      cy.readFile('cypress/fixtures/Trello_UserCreds.json').then(data => {
        cy.visit(data.Trello_Url);
       })
      cy.wait(10000);
      cy.title().should('include', 'Manage Your Team’s Projects From Anywhere | Trello');
      cy.wait(5000);
     // cy.xpath(this.trello_loginIcon).should('be.visible');

      cy.on('uncaught:exception', (e) => {
        if (e.message.includes('Things went bad')) {
        return false
         }
      })
    
      cy.xpath(this.trello_loginIcon).click();
      cy.wait(10000);
      cy.on("uncaught:exception", (e, runnable) => {
        console.log("error", e);
        console.log("runnable", runnable);
        console.log("error", e.message);
        return false;
        });

      cy.title().should('include', 'Log in to continue - Log in with Atlassian account');
      cy.xpath(this.trello_email).should('be.visible');
      cy.readFile('cypress/fixtures/Trello_UserCreds.json').then(data => {
      cy.xpath(this.trello_email).type(data.email);
      cy.wait(3000);
      cy.xpath(this.trello_clickContinueButton).click();
      })
      cy.readFile('cypress/fixtures/Trello_UserCreds.json').then(data => {
      cy.xpath(this.trello_password).type(data.password);
      cy.wait(3000);
      cy.xpath(this.trello_loginButton).click();
      })
      cy.wait(15000);
      cy.xpath(this.trello_workspaceButton).click();
      cy.wait(5000);
      cy.xpath(this.trello_sourcefuseWorkspace).click();
      cy.wait(5000);
      cy.xpath(this.trello_sourcefuseRegressionBoard).click();
      cy.wait(5000);
      cy.xpath(this.trello_inboundListIcon).click();
      cy.wait(5000);
      cy.xpath(this.trello_inboundListSort).click();
      cy.wait(5000);
      cy.xpath(this.trello_inboundListSortNewestFirst).click();
      cy.wait(5000);
      cy.xpath(this.trello_ticketInList).click();
      cy.wait(5000);
      cy.log('trying to get the text value');
      cy.xpath(this.trello_ticketText).invoke('text').as('text')
      cy.get('@text').then((text) => {
       // cy.log(text);
        ticketText = text.trim();
        cy.log('saved value print : ' + ticketText);
        cy.readFile('cypress/fixtures/Utterance_Name.json').then(data => {
          cy.wait(3000);
          cy.log('saved value print inside : ' + ticketText);
          expect(data.verifyCRMName).to.equals(ticketText);
          })
      }) 
    cy.wait(3000);
    cy.xpath(this.trello_closeTicketDialog).click();
    cy.wait(3000);
    cy.xpath(this.trello_profileLink).click();
    cy.wait(5000);
    cy.xpath(this.trello_logoutButton).click();
    cy.wait(5000);
    cy.xpath(this.trello_mainLogout).click();
    cy.wait(5000);
    cy.reload();
    cy.wait(4000);
    cy.reload();
    cy.wait(4000);
  }

  afterLogoutTrello(){
    cy.clearAllCookies();
    cy.clearAllLocalStorage();
    cy.clearAllSessionStorage();
  }

}

export default verifyCRM

