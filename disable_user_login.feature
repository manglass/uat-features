Feature: Disable User's Log-in

  As an administrator
  I want to have the ability to block the login of any user with lower level credentials
  So that I may disable the access of delinquent users

  As a registered user
  I want to have my ability to login blocked
  So that I may not have access after performing delinquent activities

  # Topics: User Management

## Test Cases
Scenario: Admin disables user login
  Given I am an administrative user with access to manage user accounts
  And There is at least one registered user account that exists
  When I log into my account
  And I navigate to the Admin Interface
  And I hover over Users on the Admin Interface main navigation
  And I click Manage
  Then I should see a datatable index of all available users in the application
  And I have access to click on the edit icon
  And I can toggle the Is Disabled setting to true
  And I can submit the Update User Information form
  And I should see a successful flash message that reads "The User has been successfully updated."

Scenario: Disabled user attempts to login
  Given I am a registered user
  And My account has login disabled
  When I log into my account
  Then I should see a warning flash message that reads "Your account was temporarily disabled at this site."