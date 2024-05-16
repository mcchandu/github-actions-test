Feature: Chatbot
  
  @Citrus_Heights @all_Uterrances
  Scenario Outline: Verify that Citrus_Heights chatbot is able to process valid response
    Given launch html - Citrus_Heights
    And click chatbox
    When Validate chatbox message for <Utterances1>
    And close browser
    Examples:
    | Utterances1 |
    | "I need to report a service requ" |
    | "I need to report an issue" |
    | "How do I report a service reque" |
    | "How do I report an issue" | 
    | "Where can I report a service re" |
    | "Where can I report an issue" |
    | "Where can I report service requ" |
    | "Where can I report issues" |
    | "Where do I report a service req" |
    | "Where do I report service reque" |   
    | "Where do I report an issue" | 
    | "Where do I report issues" | 
    | "I need to report graffiti" | 
    | "Blighted property" | 
    | "Report blight" | 
    | "Debris in ROW" | 
    | "Debris in right of way" | 
    | "Debris in roadway" | 
    | "Debris in the median" | 
    | "Litter in ROW" | 
    | "Litter in right of way" | 
    | "Litter in roadway" | 
    | "Litter in the median" | 
    | "Weeds in ROW" | 
    | "Weeds in right of way" | 
    | "Weeds in roadway" | 
    | "Weeds in the median" | 
    | "Path maintenance" | 
    | "School path maintenance" | 
    | "Community path maintenance" | 
    | "Trail maintenance" | 
    | "School trail maintenance" | 
    | "Community trail maintenance" | 
    | "Sign removal" | 
    | "Nusiance signs" | 
    | "Campaign sign removal" | 
    | "Campaign signs" | 
    | "Homeless camp" | 
    | "Homeless encampment" | 
    | "Homeless camp clean up" | 
    | "Abandoned property" | 
    | "Glass in the street" | 
    | "Broken glass in the street" | 
    | "Glass in the road" | 
    | "Broken glass in the road" | 
    | "Glass in the roadway" | 
    | "Broken glass in the roadway" | 
    | "Limbs in the street" | 
    | "Limbs in the road" | 
    | "Limbs in the roadway" | 
    | "Street light is not working" | 
    | "I need to report a pothole" | 
    | "There is a pothole" |


  @Citrus_Heights @sanity @regression @all_Uterrances
  Scenario Outline: CT-969,CT-970,CT-967,CT-968,CT-971 Verify that Citrus heights chatbot is able to process valid response
    Given launch html - Citrus_Heights
    And click chatbox
    When Validate chatbox message for <Utterances2>
    And close browser

    Examples:
    | Utterances2 |
    | "Service Request" |
    | "Report issue" |
    | "I need to report a service req" |   
    | "Where can I report a service" |
    | "No water service"|
    | "Water leak in my area" |
    | "Sewer Water In Basement" |
    | "Traffic Signal Repairs" |
    | "Parking Complaint" |
    | "Abandoned Vehicle on City Right" |
    | "Street Light Issue" |
    | "Potholes in street" |
    | "Missed Recycling Pickup" |
    | "How do I report an issu" | 
                                             


