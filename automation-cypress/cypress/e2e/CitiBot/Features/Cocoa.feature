Feature: Chatbot
  
  @Cocoa @all_Uterrances
  Scenario Outline: Verify that Cocoa chatbot is able to process valid response
    Given launch html - Cocoa
    And click chatbox
    When Validate chatbox message for <Utterances>
    And close browser
    
Examples:
  | Utterances |
  | "Report a blocked stormwater dra" |
  | "Unsafe pool" |
  | "Zoning violation" |
  | "GarbageRecycling - Missed Picku" |
  | "Report a broken sidewalk" |
  | "Report a Damaged Street Sign" |
  | "Report a Street Light Outage" |
  | "Report illegal dumping" |
  | "Report illicit Storm Water disc" |
  | "Report misuse use of fertilizer" |
  | "Report Overhanging BranchesDown" |
  | "Check For Leaks" |
  | "Check Low Pressure" |
  | "Emergency Turn Off" |
  | "Online Bill Pay Issues" |
  | "Replace Meter Box Top" |
  | "Water Bill Questions" |
  | "Water Main Break" |
  | "Water Quality Investigation" |
  | "How long should water be boiled" |
  | "How does boiling water make it" |
  | "What is Cocoas Citizens Academy" |
  | "Who do I call about child suppo" |
  | "How do I get a marriage license" |
  | "What are the rules on yard main" |
  | "Will I get a bill for calling 9" |
  | "Will the City of Cocoa turn off" |
  | "Should I report suspicious acti" |
  | "What do V-COPS do" |
  | "Is there a ban on the use of ch" |
  | "Why was the Public Service Tax" |
  | "How can I change the size of my" |
  | "How do I start utility service" |
  | "What occurs if my bill payment" |
