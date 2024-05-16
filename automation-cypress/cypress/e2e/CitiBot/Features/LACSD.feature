Feature: Chatbot

@LACSD @all_Uterrances
Scenario Outline: Verify that LACSD chatbot is able to process valid response
    Given launch html - LACSD
    And click chatbox
    When Validate chatbox message for <Utterances>
    And close browser

Examples:
   | Utterances |
   | "How can I get a tour of one of" |
   | "How can I get someone from your" |
   | "How can I determine whether I a" |
   | "I have questions or a complaint" |
   | "I am unhappy about litter or un" |
   | "I would like to film or photogr" |
   | "I have questions" |
   | "How do I annex my property into" |
   | "How do I get a Will Serve lette" |
   | "How do I get approval to build" |
   | "How do I get information abou" |
   | "Where can I find a map of and i" |
   | "Where can I" |
   | "Who can I contact if I am inter" |
   | "How do I" |
   | "How do I obtain an easement on" |
   | "How do I remove a Sanitation Di" |
   | "How much does it cost to dump" |
   | "What are your hours" |
   | "What can I dump" |
   | "Are you open on holidays" |
   | "Do I need a permit to dump" |
   | "Do you take furniture windows" |
   | "What kind of vehicle are accept" |