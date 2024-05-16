Feature: Chatbot
  
@Archie @sanity @regression
Scenario Outline: Verify that Archie chatbot is able to process valid response
    Given launch html - Archie
    And click chatbox
    When Validate chatbox message for <Utterances>
    And close browser
    
Examples:
  | Utterances |
  | "traffic speeding_CT-1598" |
  | "traffic signal_CT-1601" |
  | "graffiti_CT-1592" |
  | "street light issue_CT-1595" |
  | "sewage problem_CT-1596" |
  | "traffic sign_CT-1602" |
  | "striping street_CT-1604" |
  | "abandoned vehicle_CT-1597" |
  | "water leak_CT-1600" |
  | "missed trash_CT-1591" |
  | "illegal sign problem_CT-1606" |
  | "graffiti in pvt prop_CT-1593" |
  | "please help_CT-1590" |
  | "big pothole_CT-1605" |
  | "hazardous materials_CT-1599" |
  | "damaged sidewalk_CT-1603" |
