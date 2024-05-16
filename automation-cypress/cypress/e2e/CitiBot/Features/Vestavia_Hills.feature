Feature: Chatbot
  
@Vestavia_Hills @regression @all_Uterrances
Scenario Outline: Verify that Vestavia_Hills Chatbot is able to process valid response
    Given launch html - Vestavia_Hills
    And click chatbox
    When Validate chatbox message for <Utterances1>
    And close browser

Examples:
   | Utterances1 |
   | "What are the Council Places" |
   | "When are Council members electe" |
   | "How can I view minutes of a Cou" |
   | "What type of work requires a pe" |
   | "What is required to apply for a" |
   | "What is the Fire departments c" |
   | "How do I obtain a copy of a fir" |
   | "My carbon monoxide detectorsmok" |
   | "How can I arrange a tour of a f" |
   | "Where can I take CPR classes" |
   | "How do I make an Escape Plan fo" |
   | "How should I treat a burn" |
   | "How many smoke detectors do I n" |
   | "Should homeowners sleep with th" |
   | "Why do I have to dial 911" |
   | "What do firefighters do when th" |
   | "Do I need a permit for a firewo" |
   | "How do I file an application fo" |
   | "A solicitor just knocked on my" |
   | "What is the ad valorem millage" |
   | "I want to open a restaurant in" |
   | "When and where does the Plannin" |
   | "When and where does the Board o" |
   | "How do I annex my property into" |
   | "How do I file an application" |
   | "How may I obtain a copy of the" |
   | "I need a copy of a particular o" |
   | "My neighbor claims his property" |
   | "I need a copy of my survey. Whe" |
   | "When and how do I obtain a City" |
   | "How often do I need to renew my" |
   | "How do I file sales and use tax" |
   | "When are taxes due" |
   | "What are the current sales and" |
   | "Do I need a permit for garage s" |
   | "Can I obtain car tags, automobi" |
   | "Where can I obtain a copy of th" |
   | "How do I get paid for the sale" |


@VH_Connect @regression @Vestavia_Hills @all_Uterrances
Scenario Outline: Verify that Vestavia_Hills Chatbot is able to process valid response
    Given launch html - Vestavia_Hills
    And click chatbox
    When Validate chatbox message for <Utterances2>
    And close browser

Examples:
    | Utterances2 |
    | "Tree is broken in park" |
    | "Remove trash bag" |   
    | "Missed Household Trash Pickup" |  
    | "Missed Houshold Yard Waste" |  
    | "There is broken street light" |  
    | "The flooding is bad on haven street" |
    | "There is broken street light" |
    | "The flooding is bad on haven street" |
    | "Someone has painted graffiti on the wall" |
    | "can I speak to a representative" |
    | "Pothole" |
    | "Traffic Light Out in my local" |
    | "Leaking Fire Hydrant" |
    | "Traffic Signal LED Bulb Out" |
    | "Sewer Backup" |
    | "Sewer Manhole Issue" |
    | "Sewer Odor Issue" |
    | "Roadway Damage" |
    | "Fish Kill" |
    | "Alley Issue" |
    | "Sidewalk Issue" |
    | "Street light out" |
    | "hazardous materials" |
    | "property maintanence" |
    | "Wildlife Issue" |
    | "Missed Garbage Collection" |
    | "Damaged Fire Hydrant" |
    | "Pollutant Discharge" |
    | "Roadway Visibility Issue" |
    | "Pedestrian Crosswalk Audible Signal Buttons Issue" |
    | "Striping Issue" |
    | "construction has lasted a long time" |
    | "Missed Recycling Collection" |
    | "my neighbor has done construction without a permit" |
    | "Water Leak" |
    | "Meter Box Damaged" |
    | "Tree Issue" |
    | "Sewer Overflow" |
    | "Traffic Sign Down" |
    | "New Sign Request" |
    | "Park Issue" |
    | "When is mosquito spraying going to happen" |
    | "I need trash can bin" |
    | "Damaged Trash" |
    | "Abandoned cars in driveway" |
    | "Animal injured in Forest" |
    | "Traffic Calming Request" |
    | "Irrigation Issue in City Right of Way" |