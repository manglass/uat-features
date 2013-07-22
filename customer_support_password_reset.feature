Feature: Customer Support Password Reset

  As a customer support representative
  I want to have access to reset a registered user's account password
  So that I can quickly assist a user who has forgotten their password

  As a registered user
  I want to have the option of calling customer service to reset my password
  So that I may quickly and easily access my account after I have forgotten my password

  # Topics: User Management, Customer Support

## Test Cases
Scenario: Customer Support representative changes user password
  Given I am a customer support representative
  And There is at least one registered user account that exists
  When I log into my account
  And I navigate to the Admin Interface
  And I hover over Users on the Admin Interface main navigation
  And I click Manage
  Then I should see a datatable index of all available users in the application
  And I have access to click on the edit icon
  And I click on the link to Update User Password
  And I fill out the User Password Update form
  And I should see a successful flash message that reads "The Password has been successfully updated."
  And I should see information about the user account which has just had the password changed

Scenario: Registered user logs in after password has been changed by customer support representative
  Given I am a registered user
  And A customer support representative has just changed my password
  When I enter my Email and new Password in the Log In/Register module on the Home Page
  And I click Sign In
  Then I should be logged in to my account
  And I should see my name on the upper right corner of the screen