Feature: Chatbot
  
@McAllen @sanity @regression
Scenario Outline: CT-531,CT-532,CT-535 Verify that McAllen chatbot is able to process valid response
    Given launch html - McAllen
    And click chatbox
    When Validate chatbox message for <Utterances>
    And close browser

Examples:
  | Utterances |
  | "Emergency Intent" |
  | "Tree is broken" |
  | "RoadKill-Spanish" |
  | "traffic lights-Spanish" |

    
    
     
    
    
    
    