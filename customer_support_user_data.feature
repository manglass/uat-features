Feature: Customer Support User Data

  As a customer support representative
  I want to have access to view all relevant user data in one interface
  So that I may quickly assist users with any questions or concerns about thier account

  As a registered user
  I want to have the option of calling customer service to have any account related questions answered
  So that I may quickly and easily get the account information I am looking for

  # Topics: User Management, Customer Support

## Test Cases
Scenario: Customer Support representative views user account information
  Given I am a customer support representative
  And There is at least one registered user account that exists
  When I log into my account
  And I navigate to the Admin Interface
  And I hover over Users on the Admin Interface main navigation
  And I click Manage
  Then I should see a datatable index of all available users in the application
  And I click on the row expansion icon
  And I should see various tabs with detailed user information

