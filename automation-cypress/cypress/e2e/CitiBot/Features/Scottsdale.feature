Feature: Chatbot
  
@Scottsdale
Scenario Outline: Verify that Scottsdale Chatbot is able to process valid response
    Given launch html - Scottsdale
    And click chatbox
    When Validate chatbox message for <Utterances>
    And close browser

Examples:
    | Utterances |
    | "Traffic Signals" |
    | "where to find police station" |
    | "Traffic lights broken" |
    | "potholes on the pavement"|
    | "Residential parking permits" |
    | "Tree concern" |
    | "broken tree limb" |
    | "Noise in my neighborhood" |
    | "Sign ordinance" |
    | "Building permit" |
    | "Unpermitted construction work" |
    | "Zoning standard" |
    | "Zoning complaint" |
    | "Home occupation" |
    | "Water rebates" |
    | "Water pressure is low" |
    | "Sewer blockage" |
    | "Sewer smells" |
    | "Trash missed pick up" |
    | "Extra pick up for trash and gre" |
    | "Batteries dispose" |
    | "Need rental dumpster" |
    | "Capital improvement" |
    | "Street Sign Repair" |
    | "Where are all Parks & Recreatio" |
    | "Collection Issue" |
    | "Residential Container Repair" |
    | "where are programs centers" |
    | "Flooding on private property" |
    | "Where to find city Libraries" |
    | "Where to find city court" |
    | "Scottsdale events" |
    | "What are vacation rental and sh" |
    | "What is a vacation or short-ter" |
    | "Are vacation or short-term rent" |
    | "vacation or short term in neigh" |
    | "Do vacation or short-term renta" |
    | "Where does vacation or short-te" |
    | "How do I know if a property in" |
    | "What if a rental property does" |
    | "How can vacation or short-term" |
    | "What are the Citys responsibili" |
    | "If the City cant regulate short" |
    | "How do I obtain an annual city" |
    | "Can I list my rental properties" |
    | "Does the city have a guide for" |
    | "What does Scottsdale require of" |
    | "What is and is not allowed at a" |
    | "How can I document a nuisance p" |
    | "How many people are allowed at" |
    | "What can I do if I’m having an" |
    | "How do I update my short-termva" |
    | "How do I update my Neighbor Not" |
    | "How do I report an unlicensed o" |
   


