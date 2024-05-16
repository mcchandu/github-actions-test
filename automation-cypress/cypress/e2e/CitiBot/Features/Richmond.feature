Feature: Chatbot
  
@Richmond @all_Uterrances
Scenario Outline: Verify that Richmond chatbot is able to process valid response
    Given launch html - Richmond
    And click chatbox
    When Validate chatbox message for <Utterances>
    Then close browser

Examples:
    | Utterances |
    | "who is mayor" |
    | "Where is Boards & Commissions c" |
    | "where to find City Holidays" |
    | "where to find City Events" |
    | "where to find Elections center" |
    | "where to find State Federal" |
    | "where to find Administration of" |
    | "where to find Finance departmen" |
    | "where to find Human Resources c" |
    | "where to find Planning & Zoning" |
    | "where is Police department" |
    | "where to find Public Works" |
    | "where to find Appraisers Office" |
    | "where to find Building Codes" |
    | "where to find Business and Alco" |
    | "where to find Economic Developm" |
    | "where to find Register of Deeds" |
    | "where is Richmond Hill" |
    | "where to find Area Maps" |
    | "where to find Bryan County News" |
    | "where to find City Center" |
    | "where to find Convention & Visi" |
    | "where to find Jobs" |
    | "where to find New Residents" |
    | "where is Schools" |
    | "where to find Photo Gallery" |
    | "where to find Staff Directory" |
    | "Staff Directory" |
    | "Where i can Submit a Request" |
    | "where is Fire department" |
    | "where i can Pay Bill Online" |
    | "where to find City Council" |
    | "where to find City Plans" |
    | "where is Municipal Court" |
    | "Where are Building Department" |
    | "Where is City Managers Office" |
    | "where to find Parks & Recreatio" |
    | "where to find Utilities Departm" |
    | "where to find  Calendar of Even" |
    | "where to find educational oppor" |
    | "where to find Employment" |
    | "where is City Center Market" |
    | "where to find Public Bid Inform" |
    | "Where to Stay" |
    | "Can I get a credit on the sewer" |
    | "I had a water leak repaired. Do" |
    | "The street light is out on my s" |
    | "Where do I get a drivers manual" |
    | "Where do I apply for a Georgia" |
    | "What is the seat belt law" |
    | "How long can my teen have a lea" |
    | "How many people can ride in the" |
    | "What is the curfew for my teen" |
    | "How does my teen update their c" |
    | "What is the Georgia law concern" |
    | "I want to build a shed on my pr" |
    | "I want to build a fence on my p" |
    | "May I serve alcoholic beverages" |
    | "Who do I contact if I have lost" |
    | "How long is the jogging trail" |
    | "How do I get to the City Center" |
    | "Are there any parks in Richmond" |
    | "How do I verify employment" |
    | "How do I find out about new Cit" |
    | "How long is my application kept" |
    | "How will I be notified if Im fo" |
    | "How do I contact a citycounty d" |
    | "Where do I go to vote" |
    | "Is there a local library in the" |
    | "Where can I go get my drivers" |
    | "Who do I contact to obtain or r" |
    | "Who do I call about stray anima" |
    | "Who do I call if I have an alli" |
    | "Who do I call about ducks in my" |
    | "Ive been having issues with mo" |
    | "Who do I call if there is a dea" |
    | "There is a dead animal in the r" |
    | "The street light is out on" |
    | "Is there a Division of Family a" |
    | "Can I take a tour of the fire s" |
    | "Can you bring a fire truck to m" |
    | "Do you give out smoke detectors" |
    | "Do you teach CPR classes" |
    | "What is the citys current milla" |
    | "Does the city offer any discoun" |
 
  