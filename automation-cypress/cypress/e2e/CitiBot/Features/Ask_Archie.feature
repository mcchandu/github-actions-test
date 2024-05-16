Feature: Chatbot
  
@Ask_Archie @all_Uterrances
Scenario Outline: Verify that Ask_Archie chatbot is able to process valid response
  Given launch html - Ask_Archie
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
   | "Make a payment" |
   | "How do I make a payment online" |
   | "I want to view my bill. what we" |
   | "How do I adopt a pet" |
   | "How may I adopt online" |
   | "building permits" |
   | "Bulk Pickup" |
   | "Need mattress pickup" |
   | "My trash hasnt been picked up i" |
   | "Garbage services" |
   | "I need an additional trash can" |
   | "Trash can replacement" |
   | "I need to create a police repor" |
   | "Hello,how i can got my accident" |
   | "can I make an online crime repo" |
   | "employment" |
   | "jobs" |
   | "hiring" |
   | "Street light outage" |
   | "Where are education center" |
   | "Where are events" |
   | "Where to find Golden Empire Tra" |
   | "Where to find Handicapped Acces" |
   | "Where to find Historic Preserva" |
   | "Where to find Kern Mosquito Aba" |
   | "Where to find North of the Rive" |
   | "Where to find Police Department" |
   | "Where to find Public Safety & V" |
   | "Where to find Youth Commission" |
   | "Where to find City Council" |
   | "who is Mayor" |
   | "Where to find Municipal Code" |
   | "Where to find Animal Care Cente" |
   | "Where to find City Attorney" |
   | "Where to find City Clerk center" |
   | "Where to find Elections center" |
   | "Where to find City Manager offi" |
   | "Where to find Development Servi" |
   | "Where to find GIS Mapping Porta" |
   | "Where to find Economic & Commu" |
   | "Where to find Bakersfield Found" |
   | "Where to find City Property for" |
   | "Where to find Fire center" |
   | "Where to find Public Works Cent" |
   | "Where to find Bakersfield Munic" |
   | "Report an Issue" |
   | "Signals & Street Lights" |
   | "Biking in Bakersfield" |
   | "Report Illicit Discharge" |
   | "Public Works news" |
   | "city news" |
   | "downtown news" |
   | "Police news" |
   | "Fire news" |
   | "Boil Water advisior" |
   | "Deceased Animals" |
   | "Encampments" |
   | "Parks Equipment Issue" |
   | "Parks Irrigation Issue" |
   | "Landscaping" |
   | "Malfunctioning Street Lights" |
   | "Malfunctioning Traffic Signals" |
   | "Occupied Boarded Building" |
   | "Potholes" |
   | "Water Waste" |
   | "Shopping Cart (abandoned)" |
