Feature: Chatbot
  
  @Nola	@sanity @regression
  Scenario Outline: CT-536 Verify that Nola Chatbot is able to process valid response
    Given launch html - Nola
    And click chatbox
    When Validate chatbox message for <Utterances>
    And close browser

Examples:
    | Utterances |
    | "Tree is broken" |


      
      
