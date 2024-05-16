Feature: Chatbot

@Arlington @sanity @regression
Scenario Outline: CT-1420, Verify that Arlington Chatbot is able to process valid response
    Given launch html - Arlington
    And click chatbox
    When Validate chatbox message for <Utterances>
    And close browser

Examples:
  | Utterances |
  | "Where is E-Corporation" |