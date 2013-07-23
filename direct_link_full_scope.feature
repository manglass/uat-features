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
  I want to have full access to take course work via my native LMS
  So that I may claim credit, access content and view progress status

  # Topics: Courses, External LMS, User Management

## Test Cases

Scenario: External LMS admin uploads content into thier LMS
  Given I am an external LMS administrator
  And I have recived the proper SCORM package pointing to onlineaha
  When I upload the package to my LMS course inventory
  Then I should be able to allow access to the content to all permitted external LMS users

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
  When I click to access my course
  Then I should be on the course home page
  And I should see a listing of exercises nested within expandable headers
  
Scenario: External LMS user uses expandable headers to navigate to exercise access buttons
  Given I am an external LMS user
  And I have registered to access at least one DirectLink course
  And I click to access my course
  And I am on the course home page
  When I click on any available section headers
  Then I should see a listing of section exercises expand out
  And I should see titles, status, requirement and buttons to access exercise content
  
Scenario: External LMS user accesses course content via course player
  Given I am an external LMS user
  And I have registered to access at least one DirectLink course
  And I click to access my course
  And I am on the course home page
  And I click on any available section headers
  When I click on any available exercise access button
  Then I should be linked to course content via the application's course player

Scenario: External LMS user accesses learning resources via course home page resources module
  Given I am an external LMS user
  And I have registered to access at least one DirectLink course
  And I click to access my course
  And I am on the course home page
  When I click on resource links in the resources module
  Then I should be shown available learning resource content

Scenario: External LMS user accesses learning resources via learning resources page
  Given I am an external LMS user
  And I have registered to access at least one DirectLink course
  And I click to access my course
  And I am on the course home page
  When I click on the link to view all learning resources for the current course
  Then I should be taken to the learning resources page
  And I should have access to a full listing of all available links to course resources
  And I should have a link back to the course home page

Scenario: External LMS user accesses course evaluation after completing required exercises
  Given I am an external LMS user
  And I have registered to access at least one DirectLink course
  And I click to access my course
  And I am on the course home page
  When I have completed all required exercises and tests available
  Then I should have access to a course evaluation button
  And I should be able to click on the button to access the course evaluation form
  And I should be able to fill out the evaluation form
  And I should be able to submit the form to return to the course homepage
  
Scenario: External LMS user accesses course completion certificate after completing course
  Given I am an external LMS user
  And I have registered to access at least one DirectLink course
  And I click to access my course
  And I am on the course home page
  And I have completed all required exercises and tests available
  And I have submitted any available course evaluation
  When I click on the certificate button via the course status module
  Then I should be presented with my course completion certificate as a download

Scenario: External LMS user accesses CME credit after completing course
  Given I am an external LMS user
  And I have registered to access at least one DirectLink course
  And I click to access my course
  And I am on the course home page
  And I have completed all required exercises and tests available
  And I have submitted any available course evaluation
  When I click on the cme claim button via the course status module
  Then I should be presented with the cme claim interface
  And I should be able to submit my information
  And I should be presented with my cme certificate as a download
  
Scenario: External LMS user sees the proper completion status passed to their course record via the external LMS
  Given I am an external LMS user
  And I have registered to access at least one DirectLink course
  And I click to access my course
  And I am on the course home page
  When I experience different states of my course such as in progress, passed and failed
  Then I should see these represented in the course status module on the course homepage
  And I should see these represented in my native LMS progress indicator
  
Scenario: OnlineAHA admin updates course detail text for course homepage
  Given I am an onlineaha admin
  And I have navigated to manage courses interface
  When I click to edit an available course
  Then I should be able to edit the course home description text
  And I should be able to submit the form to update the course homepage description text

Scenario: OnlineAHA admin resets course enrollment so user can take course again
  Given I am an onlineaha admin
  And I have navigated to manage users interface
  When I click on the expantion symbol for an available user 
  And I click on the tab for learning content
  Then I should be able to click the link to reset access to the course
  And the user should be reenrolled in the course the next time they access it
  
Scenario: OnlineAHA admin accesses DirectLink usage report
  Given I am an onlineaha admin
  And I have navigated to the direct links key report interface
  When I click on the download csv link for an available organization
  Then I should have access to a report outlining all key activity for that organization


