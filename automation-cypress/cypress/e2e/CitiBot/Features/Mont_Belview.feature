Feature: Chatbot
  
@Mont_Belview @all_Uterrances
Scenario Outline: Verify that Mont_Belview Chatbot is able to process valid response
    Given launch html - Mont_Belview
    And click chatbox
    When Validate chatbox message for <Utterances>
    And close browser

Examples:
   | Utterances |
   | "Where i can pay my bill" |
   | "Where to find MB link office" |
   | "Where are all Parks & Recreatio" |
   | "Where can I report problems in" |
   | "Where to find Job Opportunities" |
   | "where is job opportunity in mon" |
   | "where are to find permit center" |
   | "Where I can report Animal Probl" |
   | "where are to find city council" |
   | "Where is the licensing center" |
   | "where are to find planning & zo" |
   | "Where to find the Election Cent" |
   | "Where to find the Public Works" |
   | "Where are the Police Department" |
   | "Where is the Health Department" |
   | "Where to find Market" |
   | "Where to find Eagle Pointe" |
   | "Where to find the Municipal cou" |
   | "Where to find the department of" |
   | "Where to find Mont Belvieus Eng" |
   | "Where to find emergency service" |
   | "Where is the city managers offi" |
   | "Where to find riceland" |
   | "Where is riceland" |
   | "Where to find Animal Shelter &" |
   | "Where to find GIS center" |
   | "Where to find CIP maps" |
   | "Where are Shopping centers" |
   | "What all places are for Sports" |
   | "Where are the Hotels in Mont Be" |
   | "Where are education centers in" |
   | "Where to find city Libraries" |
   | "Libraries" |
   | "Where are schools" |
   | "Where are the schools in Mont B" |
   | "Where are the Fire Department" |