Feature: AICC content

  As an administrator
  I want to have access to upload AICC based content
  So that I may include this content in courses I create

  As a registered user
  I want to have access to courses including AICC based content
  So that I may view, complete and receive credit for this particular content

  # Topics: Content

## Test Cases
Scenario: Admin uploads AICC based exercise content
  Given I am an administrative user with access to edit exercise content
  And There is an AICC type package I would like to upload
  When I log into my account
  And I navigate to the Admin Interface
  And I hover over Exercises on the Admin Interface main navigation
  And I click Manage in the Exercises drop-down menu
  And I click button to Upload New Exercises
  Then I should see a datatable index of all uploaded content packages in the application
  And I have access to click on the New Package link
  And I can fill out the New Package form for an AICC type package
  And I should see a successful flash message that reads "The Package has been successfully created."
  And I should see information about the package that has just been uploaded

Scenario: Admin associates AICC based exercises with a course
  Given I am an administrative user with access to edit course content
  And There is at least one AICC package which has already been uploaded to the application
  When I log into my account
  And I navigate to the Admin Interface
  And I hover over Exercises on the Admin Interface main navigation
  And I click Organize by Course
  Then I should see a datatable index of all available courses in the application
  And I have access to click on the New Course link
  And I can fill out the New Course form for an External type course
  And I should see a successful flash message that reads "The Course has been successfully created."

Scenario: Registered user interacts with course containing AICC based exercises
  Given I am a registered user
  And There is at least one AICC type course which exists in the system
  And I have purchased access to at least one AICC type course
  When I log into my account
  And I navigate to the My Courses page
  Then I should see a listing of all available Active Courses
  And I can click the Access button for the AICC type course
  And I can click the exercise access button
  And I should be taken to Healthstream's server to interact with my course
  And I should have data being passed back with my status and score

