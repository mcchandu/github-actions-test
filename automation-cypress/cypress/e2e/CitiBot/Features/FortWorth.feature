Feature: Chatbot
  
@FortWorth @sanity @regression
Scenario Outline: Verify that FortWorth chatbot is able to process valid response
    Given launch html - FortWorth
    And click chatbox
    When Validate chatbox message for <Utterances>
    And close browser

Examples:
  | Utterances |
  | "Water leak in my area" |
  | "Storm Inlet Choke" |
  | "Parking Complaint" |   
  | "Traffic Signal Repairs" |
  | "Abandoned Vehicle on City Right" |
  | "Street Light Issue" |
  | "Potholes in street" |
  | "Public Trash Can Issue" |
  | "Missed Mixed Refuse Pickup" |
  | "Dirty Street Cleaning" |

      
      
