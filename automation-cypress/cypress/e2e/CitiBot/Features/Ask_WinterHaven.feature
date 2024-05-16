Feature: Verify that Ask_WinterHaven chatbot is able to process valid response
  
  @Ask_WinterHaven @all_Uterrances
  Scenario Outline: Verify regression utterances is able to process valid response
    Given launch html - Ask_WinterHaven
    And click chatbox
    When Validate chatbox message for <Utterances1>
    And close browser
  Examples:
    | Utterances1 |
    | "Tree is broken in park" |
    | "Code Violation" |
    | "Curbside Code Violation" |
    | "Missed Household Trash Pickup" |
    | "Missed Household Yard Waste" |
    


   @Ask_WinterHaven @regression @sanity @all_Uterrances
  Scenario Outline: Verify all utterances is able to process valid response
    Given launch html - Ask_WinterHaven
    And click chatbox
    When Validate chatbox message for <Utterances2>
    And close browser

  Examples:
    | Utterances2 |
    | "Illegal Dumping" |
    | "Broken tree" |
    | "Talk to representative" |
    | "Call police" |
    | "Flood in basement area" |
    | "Curbside Code Violation" |
    | "Missed Household Yard Waste" |
    | "Missed Household Trash Pickup" |    
    | "Repair trash can" |       
    | "Graffiti on public mall wall" |    
    | "Pothole on main road" |      
    | "Roll Out Cart Request" | 
    | "Code Violation" |