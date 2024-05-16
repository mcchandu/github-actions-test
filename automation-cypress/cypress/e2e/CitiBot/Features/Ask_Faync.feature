Feature: Chatbot
  
  @Ask_FAYNC @regression @sanity
  Scenario Outline: CT-644, CT-643, CT-1061,CT-645,CT-646,CT-647,CT-648 Verify that Ask_Faync Chatbot is able to process valid response
    Given launch html - Ask_FAYNC
    And click chatbox
    When Validate chatbox message for <Utterances>
    And close browser
  
Examples:
   | Utterances |
   | "Code Violation" |
   | "Curbside Code Violation" |
   | "Remove trash bag" |
   | "Missed Household Trash Pickup" |
   | "Missed Houshold Yard Waste" |
   | "Roll-Out Cart Request for Recyc" |
   | "Tree is broken in park" |
   
   