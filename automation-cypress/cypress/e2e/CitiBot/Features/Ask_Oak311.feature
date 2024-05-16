Feature: Chatbot

@Ask_Oak311 @sanity @regression
Scenario Outline: CT-1056, Verify that AskOak Chatbot is able to process valid response
    Given launch html - Ask_Oak311
    And click chatbox
    When Validate chatbox message for <Utterances>
    And close browser

Examples:
 | Utterances |
 | "Missed recycle pickup_CT1056-1" |
 | "Recycle-Spanish-CT-1056" |