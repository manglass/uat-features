Feature: Direct Link User Experience

  As an OnlineAHA admin
  I want to have access to create usage reports for direct link access.
  So that LMS administrators can be billed accordingly
  
  As an OnlineAHA admin
  I want to have access to user managment tools
  So that I can reset Direct Link user course access

  As an external LMS admin
  I want to have access to integrate custom configured SCORM content into my LMS
  So that my users can take courses and claim credit while all information is stored at onlineaha.org

  As an external LMS user
  I want to have the option of calling customer service to reset my password
  So that I may quickly and easily access my account after I have forgotten my password

  # Topics: Courses, External LMS, User Management

## Test Cases

Scenario: External LMS user registers to take course through onlineaha.org
  Given I am an external LMS user 
  And I have access to at least one DirectLink course via my LMS
  When I click to access 
  And I am presented with a registration page
  Then my first and last name should be prefilled on the form
  And I should be prompted to agree to Terms and Conditions
  And I should be able to click a button complete registration

Scenario: External LMS user begins course
  Given I am an external LMS user
  And I have registered to access at least one DirectLink course
  And I have 

Scenario: External LMS user accesses learning resources via course home page

Scenario: External LMS user accesses exercise access buttons via expandable headers

Scenario: External LMS user accesses course content via course player

Scenario: External LMS user accesses course survey after 

Scenario: External LMS user accesses course completion certificate after completing course

Scenario: External LMS user accesses CME credit after completing course
  Given I am an external LMS user
  And I have access to at least one DirectLink course
  And I have completed at least one DirectLink course
# NOTE: Access is open and functional, but instructional text in progress

Scenario: OnlineAHA admin updates course detail text for course homepage

Scenario: OnlineAHA admin resets course enrollment so user can take course again

Scenario: External LMS user sees the proper completion status passed to their course record via the external LMS

