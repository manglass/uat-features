Feature: Public Pages

  As an administrator
  I want to have access to easily edit pages on the front end of the website
  So that I can keep all of the information presented there correct and up to date

  As a guest user
  I want to access a number of pages with helpful links and information
  So that I may have my questions answered and learn more about OnlineAHA

  # Topics: Links, Pages, Public Access, Content

## Test Cases
Scenario: Admin edits page content
  Given I am an administrative user with access to edit page content
  When I log into my account
  And I navigate to Admin Interface
  And I hover over Site on the Admin Interface main navigation
  And I click Content Modules
  Then I should see a datatable index of all editable page content in the application
  And I have access to click on the Name link or edit icon
  And I can edit content via WYSIWYG editor or click HTML to edit the page's content using HTML

Scenario: User visits 'About' page
  Given I am a guest user
  When I click About OnlineAHA on the Home Page main navigation
  Then I should see the About Page with various helpful links and descriptive text

Scenario: User has access to 'About' page links via drop-down menu (alternate access)
  Given I am a guest user
  When I hover over About OnlineAHA on the Home Page main navigation
  Then I should see a drop-down menu with various helpful links

Scenario: User visits 'Course Format' page
  Given I am a guest user
  When I click About OnlineAHA on the Home Page main navigation
  And I click Course Format on the About Page
  Then I should see the Course Format page with links to the Skills Sessions Page and the Registration Page as well as descriptive text

Scenario: User visits 'About Heartsaver' page
  Given I am a guest user
  When I click About OnlineAHA on the Home Page main navigation
  And I click About Heartsaver Skills Evaluators on the About Page
  Then I should see the About Heartsaver Page with links to an informative PDF document and the AHA Instructor Network as well as descriptive text

Scenario: User visits 'About eLearning' page
  Given I am a guest user
  When I click About OnlineAHA on the Home Page main navigation
  And I click About eLearning on the About Page
  Then I should see the About eLearning Page with descriptive text

Scenario: User visits 'Skills Sessions' page
  Given I am a guest user
  When I click About OnlineAHA on the Home Page main navigation
  And I click Skills Sessions on the About Page
  Then I should see the Skills Sessions Page with links to Verify a Certificate Page and the Locate Skills Session Page, an informative video and descriptive text and graphics

# NOTE: Video access is in the process of being implemented

Scenario: User visits 'Testimonials' page
  Given I am a guest user
  When I click About OnlineAHA on the Home Page main navigation
  And I click Testimonials on the About Page
  Then I should see the Testimonials Page with informative PDF documents as well as descriptive text

Scenario: User visits 'Workforce Training' page
  Given I am a guest user
  When I click Workforce Training on the Home Page main navigation
  Then I should see the Workforce Training Page with an informative PDF document, an external link to video content, a link to the Work Request Submission Form and descriptive text.

Scenario: User visits 'Contact Us' page
  Given I am a guest user
  When I click Contact Us on the Home Page main navigation
  Then I should see the Contact Us Page with a link to the Technical Requirements Page, a link to the Work Request Submission Form and descriptive text.

Scenario: User visits FAQ Page
  Given I am a guest user
  When I click Help (or FAQ on the Help drop-down menu) on the Home Page main navigation
  Then I should see the FAQ Page with descriptive text and embedded video

# NOTE: FAQ content, styling and access to video(s) is in the process of being implemented

Scenario: User has access to 'Help' links via drop-down menu
  Given I am a guest user
  When I hover over Help on the Home Page main navigation
  Then I should see a drop-down menu with various helpful links

Scenario: User visits 'Technical Specifications' Page
  Given I am a guest user
  When I hover over Help on the Home Page main navigation
  And I click Technical Specs
  Then I should see the Technical Requirements Page with a link to the Troubleshooting Tips Page and descriptive text

Scenario: User visits 'Troubleshooting Tips' page
  Given I am a guest user
  When I hover over Help on the Home Page main navigation
  And I click Technical Specs
  And I click Troubleshooting Tips
  Then I should see the Troubleshooting Tips Page with descriptive text

Scenario: User visits 'Terms and Conditions' page
  Given I am a guest user
  When I hover over Help on the Home Page main navigation
  And I click Terms and Conditions
  Then I should see the Terms and Conditions Page with 'User Agreement' text

Scenario: User visits 'Verify a Certificate' page
  Given I am a guest user
  When I click About OnlineAHA on the Home Page main navigation
  And I click Skills Sessions on the About Page
  And I click Verify a Certificate
  Then I should see an interface where certificate values can be entered
  And I should be able to enter values
  And I should be able to submit the values by clicking 'Verify'
  And I should be able to accurately verify a user's certificate

# NOTE: This interface is still under construction along with the Online Key Manager, clicking 'Verify' at this point will not function properly

Scenario: User visits 'Locate Skills Session' page
  Given I am a guest user
  When I click About OnlineAHA on the Home Page main navigation
  And I click Skills Sessions on the About Page
  And I click Find a Course
  Then I should see the Locate Skills Session Page with external links to 'heart.org', a link to the FAQ Page and descriptive text