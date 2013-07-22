Feature: External LMS Course Access

  As an external LMS admin
  I want to have access to integrate custom configured SCORM content into my LMS
  So that my users can take courses and claim credit while all information is stored at onlineaha.org

  As an external LMS user
  I want to have the option of calling customer service to reset my password
  So that I may quickly and easily access my account after I have forgotten my password

  # Topics: Courses, External LMS

## Test Cases
Scenario: External LMS user begins course
  Given I am an external LMS user
  And I have access to at least one DirectLink course
# NOTE: Access is open and functional, but instructional text in progress

Scenario: External LMS user accesses credit after completing course
  Given I am an external LMS user
  And I have access to at least one DirectLink course
  And I have completed at least one DirectLink course
# NOTE: Access is open and functional, but instructional text in progress