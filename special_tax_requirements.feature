Feature: Special Tax Requirements

  As an administrator
  I want to edit state and local tax values to keep up with current rates
  So that purchase amounts reflect the correct prices

  As a registered user
  I want to have appropriate state and local taxes calculated during purchase
  So I may be taxed the proper amount based on my location

  # Topics: eCommerce

## Test Cases
Scenario: Admin edits state tax values
  Given I am an administrative user with access to eCommerce configuration
  When I log in to my account
  And I hover over Admin Tools on the Admin Interface main navigation
  And I click Ecommerce: Spree Admin
  And I click Configuration in the Spree Interface main navigation
  And I click Tax Rates
  Then I can click Edit for an existing tax rate
  And I can change the Rate value

Scenario: Admin edits local tax values
  Given I am an administrative user with access to eCommerce configuration
  When I log in to my account
  And I hover over Admin Tools on the Admin Interface main navigation
  And I click Local Sales Tax
  Then I can click Edit for existing tax rates
  And I can change the Local (rate) value

Scenario: User purchases from states other than Connecticut or South Dakota
  Given I am a registered user
  And I am logged in to my account
  When I click Course Catalog on the Home Page main navigation
  And I click Add to Cart for a selected course
  And I click Check Out
  And I enter my address information
  And I click Save and Continue
  Then I should see there is no tax applied to the price of my order

Scenario: User purchases from Connecticut (state tax)
  Given I am a registered user
  And I am logged in to my account
  When I click Course Catalog on the Home Page main navigation
  And I click Add to Cart for a selected course
  And I click Check Out
  And I enter my address information with Connecticut as State
  And I click Save and Continue
  Then I should see there is a Connecticut state tax (.063) applied to my order

Scenario: User purchases from South Dakota (state tax)
  Given I am a registered user
  And I am logged in to my account
  When I click Course Catalog on the Home Page main navigation
  And I click Add to Cart for a selected course
  And I click Check Out
  And I enter my address information with South Dakota as State
  And I click Save and Continue
  Then I should see there is a South Dakota state tax (.04) applied to my order

Scenario: User purchases from South Dakota in locally taxed zip code (state and local tax)
  Given I am a registered user
  And I am logged in to my account
  When I click Course Catalog on the Home Page main navigation
  And I click Add to Cart for a selected course
  And I click Check Out
  And I enter my address information with South Dakota as State and taxable zip code as Zip Code
  And I click Save and Continue
  Then I should see there is a South Dakota state tax (.04) as well as a local tax based on my zip code applied to my order