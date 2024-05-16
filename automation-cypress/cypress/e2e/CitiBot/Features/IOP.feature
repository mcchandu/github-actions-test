Feature: Chatbot
  
@IOP @all_Uterrances
Scenario Outline: Verify that IOP chatbot is able to process valid response
    Given launch html - IOP
    And click chatbox
    When Validate chatbox message for <Utterances1>
    Then close browser

Examples:
   | Utterances1 |
   | "A wild animal has died on my pr" |
   | "Am I required to get a city dog" |
   | "Are Dogs allowed on Recreation" |
   | "Building zoning permit applicat" |
   | "Business license application" |
   | "Can I bring a tent to the beach" |
   | "Can I fill out a paper applicat" |
   | "Can I fill out a paper app" |
   | "Can I fill out the application" |
   | "Can I fill out the ap" |
   | "Can I get a copy of an elevatio" |
   | "Can I give a resident parking c" |
   | "Can I leave my vehicle in the m" |
   | "Can I pay for my citation at th" |
   | "Can I return to the island afte" |
   | "Can I run a business from my ho" |
   | "Can we bring a small grill to t" |
   | "Designated handicap parking spa" |
   | "Do I need a building permit" |
   | "Do I need a business license" |
   | "Do I need a permit for a fence" |
   | "Do I need a rental license" |
   | "Do I need a Wild Dunes Permit f" |
   | "Do you repair garbage cans" |
   | "Does the City close the IOP Con" |
   | "Does the Recreation Center have" |
   | "Electrical permit application" |
   | "Garbage can is broken" |
   | "How do apply for a variance" |
   | "How do I apply for OR renew a b" |
   | "How do I apply to be a vendor a" |
   | "How do I create an online accou" |
   | "How Do I get a rental license" |
   | "How do I get a resident decal" |
   | "How do I make a Freedom of Info" |
   | "How do I register for a Recreat" |
   | "How do I rent a beach wheelchai" |
   | "How do I report a street light" |
   | "How do I report a traffic light" |
   | "How do I schedule an inspection" |
   | "How do I sign up for a fitness" |
   | "How long do smoke alarms last" |
   | "How should I prepare for a Hurr" |
   | "How tall can a fence be" |
   | "How to report a pothole" |
   | "I am a veteran, do I need to pa" |
   | "I am handicapped, do I have to" |
   | "I have a code question" |
   | "I have a question about filling" |
   | "I have a question about my sewe" |
   | "I have a question about zoning" |
   | "I need a copy of a police repor" |
   | "Im a resident of Wild Dunes. H" |
   | "Im having problems with mosqui" |
   | "Information about flood damage" |
   | "Is there a dog park" |
   | "Is there a fee required to use" |
   | "Mechanical permit application" |
   | "Plumbing and gas permit applica" |
   | "Should I have a Carbon Monoxide" |
   | "What are the golf cart rules" |
   | "What are the hours for Open Gym" |
   | "What are the Recreation Center" |
   | "What are the recycling days" |
   | "What are the rules regarding do" |
   | "What are the rules regarding th" |
   | "What fire protection requiremen" |
   | "What if my smoke alarms are goi" |
   | "What inspections do I need" |
   | "What is the Fire Departments n" |
   | "What materials are accepted for" |
   | "What materials are not allowed" |
   | "When can my dog be on the beach" |
   | "When is the next Council meetin" |
   | "When is trash pick-up" |
   | "When is yard debriswaste picked" |
   | "Where can I get an annual parki" |
   | "Where can I park on Isle of Pal" |
   | "Where can I place a propane tan" |
   | "Where can I rent a boat" |
   | "Where do I go to vote" |
   | "Why did I get a parking ticket" |
   | "Can I cut down a tree" |



@IOP @all_Uterrances @regression
Scenario Outline: Verify that IOP chatbot is able to process valid response
    Given launch html - IOP
    And click chatbox
    When Validate chatbox message for <Utterances2>
    And close browser
    
Examples:
    | Utterances2 |
    | "What are the Recreation Cente" |
    | "How do I register for a Recrea" |
    | "How do I create an online acco" |
    | "What are the rules regarding" |
    | "What are the hours for Open Gy" |
    | "Can I reserve the Pavilionshel" |
    | "What are the rules regarding t" |
    | "Is there a fee required to us" |
    | "Does the Recreation Center hav" |
    | "Does the Recreation Cente" |
    | "A wild animal has died on my" |
    | "Building zoning permit applica" |
    | "Can I fill out a paper applica" |
    | "Can I get a copy of an elevati" |
    | "Can we bring a small grill to" |
    | "Do I need a rental licens" |
    | "How do apply for a varianc" |
    | "I am a veteran, do I need to" |
    | "Is there a dog par" |
    | "What is the Fire Departments" |
    | "Where can I rent a boa" |
