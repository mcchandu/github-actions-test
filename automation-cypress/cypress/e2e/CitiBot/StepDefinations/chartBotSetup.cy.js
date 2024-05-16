import chartBots from '../PageObjects/chartBots'
import CRM from '../PageObjects/CRM'
import {Before, Given, When, Then, After} from "cypress-cucumber-preprocessor/steps"
const chartBotsPage = new chartBots();
const CRMPage = new CRM();

Before(()=>{
    CRMPage.afterLogoutTrello();
});

Given('launch html - {word}',(filename)=>{
    chartBotsPage.navigateToURL(filename);
});

Given('click chatbox',()=>{
    chartBotsPage.clickOnChartBox();
    
});

When('Validate chatbox message for {string}',(Utterances)=>{
    chartBotsPage.ValidateChatbotGeneric(Utterances);
});

When('close browser',()=>{
    chartBotsPage.closeChartBotDialog();
});

Then('Open Acella Board',()=>{
    CRMPage.navigateToAccelaCRM();
});

Then('Open Trello Board',()=>{
    CRMPage.navigateToTrelloCRM();
});

After(()=>{
    CRMPage.afterLogoutTrello();
});
