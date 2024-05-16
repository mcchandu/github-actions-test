Feature: Chatbot
  
  @Charm_Baltimore @sanity @regression
  Scenario Outline: CT-727,CT-728,CT-731,CT-730,CT-729,CT-1063,CT-1058, Verify that Charm Baltimore chatbot is able to process valid response
    Given launch html - Charm_Baltimore
    And click chatbox
    When Validate chatbox message for <Utterances>
    And close browser

Examples:
    | Utterances |
    | "No water service" |
    | "Traffic Signal Repairs_CT731" |
    | "Sewer Water In Basement_CT730" |
    | "Storm Inlet Choke_CT729" |
    | "Parking Complaint_CT1063" |
    | "Multilingual-Hindi" |
    | "Water Leak" |
    
    
    
    
    
    



