Feature: Chatbot
  
@Santa_Clarita @all_Uterrances
Scenario Outline: Verify that Santa_Clarita Chatbot is able to process valid response
    Given launch html - Santa_Clarita
    And click chatbox
    When Validate chatbox message for <Utterances>
    And close browser

Examples:
   | Utterances |
   | "Where to find city Libraries" |
   | "Where to find City Clerk center" |
   | "Building & Safety Division of t" |
   | "Where to find Tax Information" |
   | "Where to find Information Servi" |
   | "Where to find a Purchasing cent" |
   | "Where to find a Special Distric" |
   | "Where to find the City Council" |
   | "Where to find the Building & Sa" |
   | "Where to find city events" |
   | "Where to find the Planning Divi" |
   | "Where to find City Cinemas" |
   | "Where is the Fire Department" |
   | "Where is the licensing center" |
   | "Where is the Police Department" |
   | "Where to find Volunteer Opportu" |
   | "Where to find City Jobs" |
   | "Where to find Arts & Culture" |
   | "Where to find City Parks" |
   | "Where are places to Eat & Drink" |
   | "Where to find Clarita Valley Ce" |
   | "Where to find SKATE PARK" |
   | "Where to find Trek Bike Park of" |
   | "Where to find Hike Santa Clarit" |
   | "Where to find Santa clarita gol" |
   | "Where to find Farmers Market" |
   | "Where are Shopping centers" |
   | "Where to find green santa cente" |
   | "Where to find city hall" |
   | "Where to find anty-gang task fo" |
   | "Where to find Emergency service" |
   | "Where to find the Santa Clarita" |
   | "Where to find chamber of commer" |
   | "Where are the work permit cente" |
   | "Where i can report about hazard" |
   | "Where to find film permit cente" |
   | "Where to find rental facilities" |
   | "where to find the passport serv" |
   | "what is the Court" |