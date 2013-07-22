Feature: User Log-in

  As a registered user
  I want to log-in to the application
  So that I may access a previously registered account

  # Topics: User Management

## Test Cases
Scenario: User logs in from Home Page
  Given I am a registered user
  When I enter my Email and Password in the Log In/Register module on the Home Page
  And I click Sign In
  Then I should be logged in to my account
  And I should see my name on the upper right corner of the screen

Scenario: User logs in from any available page other than the Home Page
  Given I am a registered user
  When I am on any page (other than the Home Page)
  And I enter my Email and Password in the fields available via the main navigation on the top of the page
  And I click Sign In
  Then I should be logged in to my account
  And I should see my name on the upper right corner of the screen

# NOTE: This feature is currently under construction