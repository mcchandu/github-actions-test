Feature: Chatbot
  
@Scout_Williamsburg @all_Uterrances
Scenario Outline: Verify that Scout Williamsburg Chatbot is able to process valid response
    Given launch html - Scout_Williamsburg
    And click chatbox
    When Validate chatbox message for <Utterances>
    And close browser

Examples:
   | Utterances |
   | "Where are Arts & Culture stores" |
   | "Where to find rental shelter" |
   | "Where are all Parks & Recreatio" |
   | "Where are Shopping centers" |
   | "Where are places to Eat & Drink" |
   | "What all places are for Sports" |
   | "Where is Expo Center" |
   | "Where are Hotels" |
   | "Where are Convention & Visitors" |
   | "Where is Municipal Airport" |
   | "Where are education centers" |
   | "Where to find Autonomous Vehicl" |
   | "Where to find water utilities" |
   | "Where is Film Friendly City" |
   | "Where to find Health Services" |
   | "Where to find city Libraries" |
   | "Where to find Garbage & Recycli" |
   | "Where are schools" |
   | "Where to find Health And Charit" |
   | "Where is Economic Development C" |
   | "Where are the affordable house" |
   | "Where to find city events" |
   | "Where to find Emergency Prepare" |
   | "Where to find City Council Dist" |
   | "Where are the Fire Department" |
   | "Where are the licensing center" |
   | "Where are the Maidu Museum & Hi" |
   | "Where are the Police Department" |
   | "where are to find permit center" |
   | "Where to find rental facilities" |
   | "Where are bid proposal office" |
   | "Where to find Budget of William" |
   | "Where is the city managers offi" |
   | "Where to find an economic devel" |
   | "Where to find a Voter Registrar" |
   | "Where to find Williamsburg Rede" |
   | "Where to find an Animal Control" |
   | "Where to find Tax Information" |
   | "Where to find Williamsburg Farm" |
   | "Where to find Quarterpath Recre" |
   | "Where to find Marriage License" |