# Citibot-qa-automation-cypress
Citibot-qa-automation-cypress

Introduction:
Cypress is a next generation front end testing tool built for the modern web. We address the key pain points developers and QA engineers face when testing modern applications.

We make it possible to:
Set up tests
Write tests
Run tests
Debug Tests

Cypress is most often compared to Selenium; however Cypress is both fundamentally and architecturally different. Cypress is not constrained by the same restrictions as Selenium.

This enables you to write faster, easier and more reliable tests.
QA engineers building web applications using modern JavaScript frameworks.
Cypress enables you to write all types of tests:
 End-to-end tests
 Component tests
 Integration tests
 Unit tests
Cypress can test anything that runs in a browser.


Setting up:

clone the repository and execute the below command
- Open the terminal in project directory and execute below command
   ```shell
   npm install
   ```
- To open cypress dashboard

    ```
    npx cypress open
    ```   
    It will open cypress dashboard and select End-to-end testing. After that it will open choose browser page, then select the browser and click on start end-to-end testing.
    It will open new selected browser instance with list of feature files. By selecting the feature file it will start the execution.

- To execute the tests execute below command.
    ```
    npm run test
    ```
- To execute the tests and to create the results execute below command.

    ```
    npm run test:allure
    ```    
- To generate the results report execute below command.

    ```
    npm run allure-open
    ```    
