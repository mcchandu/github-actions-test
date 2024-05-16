Feature: Chatbot
  

@Roseville @sanity @regression
Scenario Outline: CT-1167, CT-1168, Verify that Roseville Chatbot is able to process valid response
    Given launch html - Roseville
    And click chatbox
    When Validate chatbox message for <Utterances1>
    And close browser

Examples:
    | Utterances1 |
    | "Vandalized" |
    | "Constructing without a permit" |



@Roseville @all_Uterrances
Scenario Outline: Verify that Roseville Chatbot is able to process valid response for all utterances.
    Given launch html - Roseville
    And click chatbox
    When Validate chatbox message for <Utterances2>
    And close browser

Examples:
   | Utterances2 |
   | "Where are Arts & Culture stores" |
   | "Tree concern" |
   | "LandscapingStreetscapes" |
   | "Public nuisance violation" |
   | "Building permit process" |
   | "Sign ordinance" |
   | "Unpermitted work" |
   | "Zoning standard" |
   | "Zoning complaint" |
   | "Home occupation" |
   | "Roaches" |
   | "Dispose of cardboard, sharps, m" |
   | "dumpster rental" |
   | "Capital improvement and rehab p" |
   | "Sewer smells" |
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
   | "Where to fine Health And Charit" |
   | "Where is Economic Development C" |
   | "Where are the affordable house" |
   | "Where to find city events" |
   | "Where to find Emergency Prepare" |
   | "Where to find City Council Dist" |
   | "Where are the Fire Department" |
   | "Where are the licensing center" |
   | "Where are the Maidu Museum & Hi" |
   | "where are the Police Department" |
   | "where are to find permit center" |
   | "Roadway Resurfacing InquiryConc" |
   | "Traffic study request or sugges" |
   | "Residential parking permits" |


