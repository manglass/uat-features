Feature: Course Hidden Flag

  As an administrator
  I want to have the ability to flag a course as hidden
  So that it will be accessible, but not available via the course catalog

  As a registered user
  I want to have access to certain courses hidden from the course catalog
  So that I may consume necessary content which is not publicly available

  # Topics: Courses

## Test Cases
Scenario: Admin flags course as hidden
  Given I am an administrative user with access to edit course content
  And There is at least one active course that exists
  When I log into my account
  And I navigate to the Admin Interface
  And I hover over Exercises on the Admin Interface main navigation
  And I click Organize by Course
  Then I should see a datatable index of all available courses in the application
  And I have access to click on the edit icon
  And I can select the option Yes to not display via Course Catalog page
  And I can submit the course edit form
  And I should see a successful flash message that reads "The Course has been successfully updated."

Scenario: User does not see hidden course via course catalog
  Given I am a registered user
  And There is at least one hidden course that exists
  When I log into my account
  And I click Course Catalog on the Home Page main navigation
  Then I should not see the hidden course

Scenario: User has access to hidden course
  Given I am a registered user
  And I have been enrolled in at least one hidden course
# NOTE: Full enrollment functionality is still in the process of being implemented