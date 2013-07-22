Feature: Course Active vs Inactive Flag

  As an administrator
  I want to have the ability to flag a course as active or inactive
  So that I may manually decide whether or not certain courses are available for user consumption

  As a registered user
  I want to only be aware of access to courses which are active
  So that I have an accurate list of available courses

  # Topics: Courses

## Test Cases
Scenario: Admin flags course as inactive
  Given I am an administrative user with access to edit course content
  And There is at least one active course that exists
  When I log into my account
  And I navigate to the Admin Interface
  And I hover over Exercises on the Admin Interface main navigation
  And I click Organize by Course
  Then I should see a datatable index of all available courses in the application
  And I have access to click on the edit icon
  And I can toggle the active setting to false
  And I can submit the course edit form
  And I should see a successful flash message that reads "The Course has been successfully updated."

Scenario: Admin flags inactive course back to active
  Given I am an administrative user with access to edit course content
  And There is at least one inactive course that exists
  When I log into my account
  And I navigate to the Admin Interface
  And I hover over Exercises on the Admin Interface main navigation
  And I click Organize by Course
  Then I should see a datatable index of all available courses in the application
  And I have access to click on the edit icon
  And I can toggle the active setting to true
  And I can submit the course edit form
  And I should see a successful flash message that reads "The Course has been successfully updated."

Scenario: Registered user does not have access to inactive course
  Given I am a registered user
  And There is at least one inactive course that exists
  When I log into my account
  And I click Course Catalog on the Home Page main navigation
  Then I should not see the inactive course
