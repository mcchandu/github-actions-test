Feature: Chatbot
  
  @Charleston_County @regression @all_Uterrances
  Scenario Outline: Verify that Charleston County Chatbot is able to process valid response
    Given launch html - Charleston_County
    And click chatbox
    When Validate chatbox message for <Utterances>
    And close browser

Examples:
    | Utterances |
    | "what are the upcoming event" |
    | "what are taxes" |
    | "News in charleston county" |
    | "what are the online services" |
    | "what are the highlights in char" |
    | "what the programs available in" |
    | "what are the schools in charles" |
    | "what are the Municipalities" |
    | "what are the Employee benefits" |
    | "where are Arts & Entertainment" |
    | "What is charleston community" |
    | "What are the department availab" |
    | "Where are the county library" |
    | "where are the county parks" |
    | "what are the elected officials" |
    | "what are the boardscommissions" |
    | "Where to find projects" |
    | "where to get visitor informatio" |
    | "where is district map" |
    | "who are the Council Members" |
    | "who is my elected official" |
    | "what is Council Agendas" |
    | "what are the Courts Related Inf" |
    | "Where are business application" |
    | "where to find financial reports" |
    | "What is the phone number for vo" |
    | "Guide for Candidate filling" |
    | "Online absentee application req" |
    | "Political posters" |
    | "Election day working hours" |
    | "Which voter are eligible to rec" |
    | "Voter registertion office" |
    | "Who can apply fedral card" |
    | "Write in president" |
    | "What are the photo ID document" |
    | "poll worker" |
    | "Requirement to receive an absen" |
    | "Voter office hours" |
    | "Absentee ballots drop off" |
    | "How to voter change of address" |
    | "Broken Tree_Hindi" |
    | "Missed Household Trash Pickup" |
    


      
      
