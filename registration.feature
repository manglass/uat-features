Feature: User Registration

  As a guest user
  I want to register an account
  So that I may access the application as a learner

  # Topics: User Management

## Test Cases
Scenario: Registration via Home Page login widget (domestic)
  Given I am a domestic guest user
  When I click to Sign Up on the Home Page
  And I fill out the registration form
  Then I should see that I am logged in
  And I should be on the "/courses" page
  And I should be greeted with a flash message
  And My account should be learner type
  And I should have a domestic profile
  And I should have received a welcome email

Scenario: Registration via Home Page login widget (international)
  Given I am an international guest user
  When I click to Sign Up on the Home Page
  And I fill out the registration form
  Then I should see that I am logged in
  And I should be on the "/courses" page
  And I should be greeted with a flash message
  And My account should be learner type
  And I should have an international profile
  And I should have received a welcome email