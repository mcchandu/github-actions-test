Feature: Chatbot
  
@Trello_CRM @Trello_CRM_regression
Scenario Outline: Verify that CRM Regression Chatbot is able to process valid response
    Given launch html - Trello_CRM_Regression_Suite
    And click chatbox
    When Validate chatbox message for <Utterances>
    And close browser
    Then Open Trello Board

Examples:
    | Utterances |
    | "Tree is broken in park" |
    | "Illegal Dumping" |
    | "Remove trash bag" |
    | "Missed Household Trash Pickup" |
    | "Missed Houshold Yard Waste" |
    | "Roll-Out Cart Request for Recyc" |
    | "There is broken street light" |
    | "The flooding is bad on haven st" | 
    | "Someone has painted graffiti on" |
    | "Pothole" |
    | "street subsidance" |
    | "Traffic Light Out in my local" |
    | "Leaking Fire Hydrant" |
    | "Traffic Signal LED Bulb Out" |
    | "Sewer Backup" |
    | "Sewer Manhole Issue" |
    | "Sewer Odor Issue" |
    | "Roadway Damage" |
    | "Fish Kill" |
    | "Alley Issue" |
    | "Sidewalk Issue" |
    | "Street light out" |
    | "hazardous materials" |
    | "property maintanence" |
    | "Missed Garbage Collection" |
    | "Damaged Fire Hydrant" |
    | "clogged stormdrain" |
    | "Roadway Visibility Issue" |
    | "Pedestrian Crosswalk Audible Si" |
    | "Public Restroom Facility Issue" |
    | "Activity Fields Issue" |
    | "Striping Issue" |
    | "construction has lasted a long" |
    | "Missed Recycling Collection" |
    | "there is trash on the neutral g" |
    | "my neighbor has done constructi" |
    | "Water Leak" |
    | "Meter Box Damaged" |
    | "Tree Issue" |
    | "Sewer Overflow" |
    | "Traffic Sign Down" |
    | "Public Lakeshore Issue" |
    | "New Sign Request" |
    | "Park Issue" |
    | "Cemetery Issue" |
    | "When is mosquito spraying going" |
    | "I need trash can bin" |
    | "Damaged Trash" |
    | "Abandoned cars in driveway" |
    | "Injured Animal" |
    | "Traffic Calming Request" |
    | "Irrigation Issue in City Right" |
