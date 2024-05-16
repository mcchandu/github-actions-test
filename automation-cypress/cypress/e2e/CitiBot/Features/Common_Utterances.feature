Feature: Chatbot
  
@Common_Utterances @all_Uterrances
Scenario Outline: Verify the common utterances on Augusta chatbot is able to process valid response
    Given launch html - Common_Utterances
    And click chatbox
    When Validate chatbox message for <Utterances>
    And close browser

Examples:
   | Utterances |
   | "No water service" |
   | "Water leak in my area" |
   | "Storm Inlet Choke" |
   | "Sewer Water In Basement" |
   | "Traffic Signal Repairs" |
   | "Parking Complaint" |
   | "Abandoned Vehicle on City Right" |
   | "Street Light Issue" |
   | "Potholes in street" |
   | "Missed Recycling Pickup" |
   | "Public Trash Can Issue" |
   | "Missed Mixed Refuse Pickup" |
   | "Dirty Street Cleaning" |
   | "Dirty Alley Cleaning" |
   | "Recycling Cart Stolen" |
   | "Bulk Trash Pick Up-Weekday" |
   | "Noise in my neighbourhood" |
   | "Animal Injured" |
   | "Vacant Residential Property" |
   | "Remove Weeds from backyard" |
   | "Structural Deficiencies" |
   | "lack of water" |
   | "Illegal Dumping" |
   | "Fallen tree" |
   | "City Street Tree Fallen Limb" |
   | "Grass Mowing on Public Property" |
   | "Graffiti Complaint" |
 