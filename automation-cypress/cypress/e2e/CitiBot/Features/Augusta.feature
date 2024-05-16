Feature: Chatbot
  
  @Augusta @all_Uterrances
  Scenario Outline: Verify that Augusta chatbot is able to process valid response
    Given launch html - Augusta
    And click chatbox
    When Validate chatbox message for <Utterances>
    And close browser

  Examples:
   | Utterances |
   | "I want to talk to human" |
   | "Information Request" |
   | "Water Leaks" |
   | "Inoperable Vehicle (3-5-135) 99" |
   | "Sewer Back Up 944" |
   | "Pothole 937" |
   | "Plumbing Issue 683" |
   | "ROW Request 589" |
   | "Overgrown Vegetation 557" |
   | "SinkholeCave In 545" |
   | "Ditch Request 535" |
   | "Missed Trash Collection 471" |
   | "Storm Drain Request 418" |
   | "Nuisance Property 376" |
   | "Lighting Issue 356" |
   | "ACHeating Issue 344" |
   | "Property Damage 316" |
   | "TreeLimb Down 314" |
   | "Mosquito Control Requests 304" |
   | "Meter Trouble (Broken BoxTop) 2" |
   | "Encroachment Permit 274" |
   | "Animal Dead 269" |
   | "Illegal Dumping (Litter Divisio" |
   | "Roaming Animal 261" |
   | "Electrical Issue 234" |
   | "Abandoned Vehicle (Sheriff) 231" |
   | "Door Issue 220" |
   | "Trash and Debris 216" |
   | "Cart Replacement 216" |
   | "Traffic Signal Malfunctioning 2" |
   | "Beazley Room Reservation 181" |
   | "Furniture RelocateAssemble 163" |
   | "Hydrant Troubles 135" |
   | "Manhole Issue 126" |
   | "Cart Delivery 120" |
   | "Flooding 97" |
   | "Grounds DebrisTrash Removal 95" |
   | "Retention Pond Request 91" |
   | "Tenant Complaints 89" |
   | "More Coverage (Sheriff) 85" |
   | "Park Maintenance 82" |
   | "Driveway Request 81" |
   | "New Sign Request 40" |
   | "Painting Request 40" |
   | "Speed Hump Request 39" |
   | "Curb Stop Issue 36" |
   | "Cemetery Request 36" |
   | "Special Event Set Up 31" |
   | "Road Scrape Request 28" |
   | "Basketball Goal in the ROW 27" |
   | "Zoning (Setback Violation) 26" |
   | "Campground Request 1" |
   | "General Information 1" |
   | "Rumble Strip Request 1" |
   | "Raised Pavement Marker Request" |
   | "Pest Control 1" |
   | "Pest Control 1" |
   | "Athletic Equipment 1" |
  