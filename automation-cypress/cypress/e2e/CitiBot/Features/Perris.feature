Feature: Chatbot
  
@Perris @all_Uterrances
Scenario Outline: Verify that Perris chatbot is able to process valid response
    Given launch html - Perris
    And click chatbox
    When Validate chatbox message for <Utterances>
    And close browser

 Examples:
    | Utterances |
    | "Personal property tax" |
    | "Need to pay property taxes" |
    | "How can I pay my property tax o" |
    | "When is Yard Waste pick up" |
    | "Whatre the recycle days" |
    | "When is trash pick up" |
    | "When does my trash get picked u" |
    | "Power out" |
    | "Report a power outage" |
    | "Make a payment" |
    | "How do I make a payment online" |
    | "I want to view my bill. what we" |
    | "How do I pay for a dog license" |
    | "How do I search for a lost pet" |
    | "where do i pay my water bill" |
    | "Water Bill" |
    | "building permits" |
    | "I am looking to find the owner" |
    | "Bulk Pickup" |
    | "Need mattress pickup" |
    | "My trash hasnt been picked up i" |
    | "Garbage services" |
    | "I need an additional trash can" |
    | "Trash can replacement" |
    | "I need to create a police repor" |
    | "Hello, how i can got my acciden" |
    | "can I make an online crime repo" |
    | "employment" |
    | "jobs" |
    | "Report a street light out" |
    | "Traffic accident report" |
    | "What is the traffic incident on" |
    | "Where can I view city forms" |
    | "How do I register for city clas" |
    | "Who is the City Manager" |
    | "What holidays do CR&R observe" |
    | "How do I pay my trash bill" |
    | "How do I pay for animal related" |
    | "How do I report a pothole" |
    | "What days does the street sweep" |
    | "How do I report graffiti for re" |
    | "How do I contact Code Enforceme" |
    | "Where can I find local traffic" |
    | "Where can I find local housing" |
    | "Where are the schools in Perris" |
    | "Where do I find local utilities" |
    | "How can I watch Perris TVChanne" |
    | "How can I post an announcement" |
    | "Where can I view current press" |
    | "Who is the Mayor" |
    | "Where can I view past and curre" |
    | "Where can i view Council or" |
    | "Where can I find information ab" |
    | "Where can I learn more about Di" |
  