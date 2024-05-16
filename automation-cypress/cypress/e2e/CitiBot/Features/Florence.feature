Feature: Chatbot
  
@Florence @all_Uterrances
Scenario Outline: Verify that Florence chatbot is able to process valid response
    Given launch html - Florence
    And click chatbox
    When Validate chatbox message for <Utterances>
    And close browser
    
Examples:
   | Utterances |
   | "Where do I go to set up new ser" |
   | "Where do I find the leak adjust" |
   | "How do I pay my water bill" |
   | "Howwhere do I set up my online" |
   | "Where can I find an ACH bank dr" |
   | "Where can I find a transfer wat" |
   | "Where can I get a copy of my bi" |
   | "Who do I call if my trash has n" |
   | "Who do I call to pick up yard d" |
   | "Who do I call for discolored wa" |
   | "What are the hours of operation" |
   | "Where are you located" |
   | "What is the cut off time for th" |
   | "where to find City Council" |
   | "where to find Election Informat" |
   | "Who is Mayor" |
   | "Where are City Center" |
   | "where to find City Plans" |
   | "where to find Code of Ordinance" |
   | "where is Municipal Court" |
   | "Where are Animal Shelter" |
   | "Where are Building Department" |
   | "Where is City Managers Office" |
   | "where to find Fire Department" |
   | "where to find Human Resources c" |
   | "where to find Parks & Recreatio" |
   | "where to find  Athletics & Spor" |
   | "where to find Community Center" |
   | "where to find Planning, Researc" |
   | "where is Police Department" |
   | "where to find Public Works cent" |
   | "where to find Utilities Departm" |
   | "where to find  Calendar of Even" |
   | "where to find City University" |
   | "where is City University" |
   | "where to find Downtown Parking" |
   | "Where is Downtown Parking" |
   | "where to find Employment"|
   | "where to find Florence City E-N" |
   | "Garbage & Yard Waste Collection" |
   | "where to find  GIS Maps" |
   | "where to find city Auction Item" |
   | "where to find Local Foods" |
   | "where is City Center Market" |
   | "where to find Community Gardens" |
   | "where to find Quality Affordabl" |
   | "where to find Recycle Florence" |
   | "where to find Volunteer Opportu" |
   | "where i can get Water Quality R" |
   | "where to find Business Licenses" |
   | "where to find Zoning Compliance" |
   | "where to find Public Bid Inform" |
   | "where to find Minority & Women-" |
   | "where to find High Hill Creek M" |
   | "where to find City Radio" |
   | "where is city radio" |
   | "where to find Florence Conventi" |
   | "Where to Eat" |
   | "Where to Stay" |
   | "where to find Florence County M" |
   | "where to find Florence Theatre" |
   | "where to find Performing Arts C" |
   | "Zoning Compliance" |
   | "where to apply File for Claim" |
   | "Where i can Pay" |
   | "Property Tax" |
   | "Water Bill" |
   | "Repair water leak" |
   | "Check water leak" |
   | "Repair work area" |
   | "check water pressure" |
   | "turn water off" |
   | "trim tree limbs" |
   | "turn water on" |
   | "check hydrant" |
   | "remove trees" |
   | "locate water valve" |
   | "Repair 2 service" |
   | "storm damage" |
   | "park repair" |
   | "replace line setter" |


