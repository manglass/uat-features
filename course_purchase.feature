Feature: Course Purchase

  As an administrator
  I want to setup and configure payment processors and view purchase data reports
  So that I may properly manage and analyze the eCommerce portion of the application

  As a domestic user
  I want to submit proper payment information
  So that I may complete purchase(s) of course(s)

  As an international user
  I want to submit proper payment information
  So that I may complete purchase(s) of course(s)

  # Topics: eCommerce, Courses

## Test Cases
Scenario: Admin creates new payment processor
  Given I am an administrative user with access to edit eCommerce configuration
  When I log into my account
  And I navigate to the Admin Interface
  And I hover over Admin Tools on the Admin Interface main navigation
  And I click Ecommerce: Spree Admin
  And I click Configuration on the Spree Interface main navigation
  And I click Payment Methods
  Then I should see a button to add New Payment Method
  And I can enter the proper information to add a new payment processor to apply to checkout

Scenario: Admin edits existing payment processor
  Given I am an administrative user with access to edit eCommerce configuration
  When I log into my account
  And I navigate to the Admin Interface
  And I hover over Admin Tools on the Admin Interface main navigation
  And I click Ecommerce: Spree Admin
  And I click Configuration on the Spree Interface main navigation
  And I click Payment Methods
  Then I should see Edit links for each existing payment processor
  And I should be able to edit the configuration for an existing payment processor

Scenario: Admin views purchase reports
  Given I am an administrative user with access to edit eCommerce configuration
  When I log into my account
  And I navigate to the Admin Interface
  And I hover over Admin Tools on the Admin Interface main navigation
  And I click Ecommerce: Spree Admin
  And I click Reports on the Spree Interface main navigation
  Then I should see a listing of available reports to run on the active purchase history

# NOTE: Some reports are still not completely implemented

Scenario: User adds single course to cart
  Given I am a registered user
  And I am logged in to my account
  When I click Course Catalog on the Home Page main navigation
  And I click Add to Cart for a selected course
  Then I should be taken to the Shopping Cart Page
  And the course that I have chosen should be in the cart

Scenario: User adds multiple courses to cart
  Given I am a registered user
  And I am logged in to my account
  When I click Course Catalog on the Home Page main navigation
  And I click Add to Cart for a selected course
  And I click Continue Shopping (on the Shopping Cart Page)
  And I click Add to Cart for a different course than the one above
  Then I should be taken to the Shopping Cart Page
  And the courses that I have chosen should be in the cart

Scenario: User navigates purchase flow (domestic)
  Given I am a registered user
  And I am logged in to my account
  When I click Course Catalog on the Home Page main navigation
  And I click Add to Cart for a selected course
  And I click Check Out
  And I enter my address information
  And I click Save and Continue
  And I enter my Card Number, Expiration Date, and Card Code
  And I click Save and Continue
  Then I should see my order details
  And I should have received and email receipt
  And I should be able to click My Courses to access my course

# NOTE: Please see Scitent representative for test credit card number to use during test purchase on staging server

Scenario: User navigates purchase flow (international)
  Given I am a registered user with international account
  And I am logged in to my account

# NOTE: The international payment processor is not yet properly implemented