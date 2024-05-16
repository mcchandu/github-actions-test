const XLSX = require('xlsx');
const path = require('path');
let excelFileName;
let verifyName;
let utteranceName;
let verifyCRMName;
//var textMatchFound = false;
let ticketSubmitValueJson;
let excelIndexParameter;

class Homepage {

    homePage_chartBox = '//div[@id="root"]//img';
    homePage_chartBoxDialog = '//h3[contains(text(),"Ask Winter Haven")]';
    homePage_messageInputBox = '//input[contains(@class,"MuiInputBase-input")]'
    homePage_messageSendButton = '//button[contains(@class,"message-box_sendButton")][2]'
    homePage_chartBoxUserMessage = '//div[contains(@class,"MessageCard_textColorUser") and contains(span/text(),"chatText")]'
    homePage_chartBoxLink = '//div[contains(@class,"MessageCard_links")]//span[contains(text(),"linkText")]/../..//a'
    homePage_chartBoxDialogCloseButton = '//div[@id="root"]//img'
    chatMessage = "(//div[@class='MessageCard_textColorBot__3mBal'])[PARAMETER]";
    chatButton = "//div[@class='MuiButtonBase-root MuiChip-root MuiChip-outlined MuiChip-clickable']"
    chatButtonVertical = "//div[@class='MuiBox-root jss32']/div[2]/button[1]"

    
    navigateToURL(filename) {
        excelFileName = filename;
        const html_file_path = path.join(__dirname, '../../../fixtures/HTML_Files/' + filename + '.html');
        cy.visit(html_file_path);
        cy.title().should('include', 'Citibot Sample Project');
    }


    clickOnChartBox() {
        cy.xpath(this.homePage_chartBox).should('be.visible');
        cy.xpath(this.homePage_chartBox).click();
    }

   enterMessageAndSend(inputMessage, sheetName) {
        cy.frameLoaded("#citibot");
        if((inputMessage) === 'Test User'){
            cy.wait(2000);
            verifyName = inputMessage ;
            cy.wait(3000);
            this.readExcelForUtterance(sheetName, 'C' + 2);
            cy.wait(3000);
        }
        cy.wait(3000);
        cy.iframe().xpath(this.homePage_messageInputBox).click();
        cy.iframe().xpath(this.homePage_messageInputBox).type(inputMessage);
        cy.iframe().xpath(this.homePage_messageInputBox).should('have.value', inputMessage);
        cy.iframe().xpath(this.homePage_messageSendButton).should('be.visible');
        cy.iframe().xpath(this.homePage_messageSendButton).click();
       // cy.iframe().xpath(this.homePage_chartBoxUserMessage.replace('chatText', inputMessage)).invoke('text').then((userMessage) => {
       //     expect(userMessage).to.contains((inputMessage).toString());
       // });
    }  

    readExcelForUtterance(sheetName, cellValue){
        cy.readExcelCell({
            filename: excelFileName,
            sheetName: sheetName,
            cellReference: cellValue,
        }).then((cellValue) => {
            utteranceName = cellValue.v;
            cy.wait(3000);
            let verifyCRMName = (verifyName + ': ' + utteranceName)
            cy.wait(3000);
            cy.writeFile('cypress/fixtures/Utterance_Name.json', {
            "verifyCRMName": verifyCRMName
            })
            cy.wait(3000);
        });  
        
    }

    verifyTheChartMessage(sheetName, cellValue, parameter) { 
        cy.readExcelCell({
            filename: excelFileName,
            sheetName: sheetName,
            cellReference: cellValue,
        }).then((cellValue) => {
            cy.frameLoaded("#citibot");
            cy.wait(15000);
            
            cy.iframe().xpath(this.chatMessage.replace('PARAMETER', parameter)).should('have.length', 1);
            
            cy.iframe().xpath(this.chatMessage.replace('PARAMETER', parameter)).should('have.length', 1).should('exist');
            cy.iframe().xpath(this.chatMessage.replace('PARAMETER', parameter)).invoke('text').then((chartMessage) => {
               let cellText = cellValue.v
                expect(chartMessage.trim).to.equal(cellText.replace("I\\", 'I').trim);    
            });
        }); 
    }

    verifyTheChartLinks(sheetName, cellValue) {
        cy.readExcelCell({
            filename: excelFileName,
            sheetName: sheetName,
            cellReference: cellValue,
        }).then((cellValue) => {
            cy.frameLoaded("#citibot");
            cy.wait(10000);
            
            cy.iframe().xpath(this.homePage_chartBoxLink.replace('linkText', cellValue.v)).should('have.length', 1);
            cy.wait(15000);
            cy.iframe().xpath(this.homePage_chartBoxLink.replace('linkText', cellValue.v)).should('have.length', 1).should('exist');
            cy.iframe().xpath(this.homePage_chartBoxLink.replace('linkText', cellValue.v)).invoke('text').then((chartLink) => {
                expect(chartLink).to.equal(cellValue.v);
            });
        });
    }

    closeChartBotDialog() {
        cy.xpath(this.homePage_chartBoxDialogCloseButton).should('be.visible');
        cy.xpath(this.homePage_chartBoxDialogCloseButton).click();
    }

    getUrlFromLinkAndVisitItsStatus(linkCellValue) {
        cy.frameLoaded("#citibot");
        cy.iframe().xpath(this.homePage_chartBoxLink.replace('linkText', linkCellValue.v)).should('have.length', 1);
        cy.iframe().xpath(this.homePage_chartBoxLink.replace('linkText', linkCellValue.v)).should('exist');
        cy.iframe().xpath(this.homePage_chartBoxLink.replace('linkText', linkCellValue.v)).should('have.attr', 'href').then((url) => {
            cy.request('GET', url)
                .then((response) => {
                    // Validate the HTTP status code
                 //   expect(response.status).to.eq(200);
                 // Validate the HTTP status code of 200 and 203
                 if(response.status==200){
                    expect(response.status).to.eq(200);
                 } else if(response.status==203){
                    expect(response.status).to.eq(203);
                 }
                });
        });
    }

    clickOnRandomButton() {
      //  cy.frameLoaded("#citibot");
      //  cy.iframe().xpath(this.chatButton).as('elements');
      //  cy.iframe().get('@elements').its('length').then((count) => {
      //      cy.iframe().get('@elements').eq(count - 1).click();
      //  });
    
        cy.frameLoaded("#citibot");
        if(cy.iframe().xpath(this.chatButton).as('elements')){
            cy.iframe().get('@elements').its('length').then((count) => {
                 cy.iframe().get('@elements').eq(count - 1).click();
                  });
        } else if(cy.iframe().xpath(this.chatButtonVertical).as('elements')){
            cy.iframe().get('@elements').its('length').then((count) => {
                cy.iframe().get('@elements').click();
                 });
        }


    }

   ValidateChatbotGeneric(sheetName) {
        let index = 1;
        cy.GetNumberOfRows({
            filename: excelFileName,
            sheetName: sheetName
        }).then((ExcelRowsCount) => {
            for (let i = 2; i <= ExcelRowsCount; i++) {
                cy.readExcelCell({
                    filename: excelFileName,
                    sheetName: sheetName,
                    cellReference: 'A' + i,
                }).then((cellValue) => {
                    if (cellValue.v === 'Message') {
                        cy.readExcelCell({
                            filename: excelFileName,
                            sheetName: sheetName,
                            cellReference: 'C' + i,
                        }).then((inputMessage) => { 
                            this.verifyTheChartMessage(sheetName, 'B' + i, index);
                            index = index + 1;
                            if (inputMessage != null) {
                                this.enterMessageAndSend(inputMessage.v, sheetName);
                            }
                            
                        });
                    } else if (cellValue.v === 'link') {
                        cy.readExcelCell({
                            filename: excelFileName,
                            sheetName: sheetName,
                            cellReference: 'C' + i,
                        }).then((inputMessage) => {

                            this.verifyTheChartLinks(sheetName, 'B' + i);
                            if (inputMessage != null) {
                                this.getUrlFromLinkAndVisitItsStatus(inputMessage);
                            }
                        });
                    } else if (cellValue.v === 'buttons') {
                        cy.readExcelCell({
                            filename: excelFileName,
                            sheetName: sheetName,
                            cellReference: 'C' + i,
                        }).then((inputMessage) => {
                            if (inputMessage.v === 'Random') {
                                this.clickOnRandomButton();
                            }

                        });
                    }
                });
            }
        });
    }   

}

export default Homepage

