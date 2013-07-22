Feature: Course Catalog

  As an administrator
  I want to have access to easily edit courses and their associated details
  So that I can manage courses and how they are displayed in the application
  
  As a guest user
  I want to have access to view all available courses/learning content
  So that I may decide to register and purchase
  
  As a registered user
  I want to have access to view and purchase available courses/learner content
  So that I may decide to purchase

  # Topics: eCommerce, Courses

## Test Cases
Scenario: Admin creates new course
  Given I am an administrative user with access to edit courses
  When I log into my account
# NOTE: open and functional, but instructional text in progress

Scenario: Admin edits existing course
  Given I am an administrative user with access to edit courses
  When I log into my account
# NOTE: open and functional, but instructional text in progress

Scenario: Admin manages exercises associated with course
  Given I am an administrative user with access to edit courses
  When I log into my account
# NOTE: open and functional, but instructional text in progress

Scenario: Admin manages credit associated with course
  Given I am an administrative user with access to edit courses
  When I log into my account
# NOTE: open and functional, but instructional text in progress

Scenario: Admin deletes existing course
  Given I am an administrative user with access to edit courses
  When I log into my account
# NOTE: is open and functional, but instructional text in progress

Scenario: Admin makes course purchasable
  Given I am an administrative user with access to edit courses
  When I log into my account
# NOTE: open and functional, but instructional text in progress

Scenario: User visits 'Course Catalog' page
  Given I am a guest user
  When I click Course Catalog on the Home Page main navigation
  Then I should a full listing of the available courses

Scenario: User filters results
  Given I am a guest user
  When I click Course Catalog on the Home Page main navigation
  And I select a filter option from the drop down menu at the top of the Course Catalog Page
  Then I should see only those courses that are marked with the filter I have chosen

Scenario: User interacts with course details
  Given I am a guest user
  When I click Course Catalog on the Home Page main navigation
  And I click on a course title OR I click on Course Details
  Then a section with relevant course details should drop down
  And I should be able to close the section by clicking a second time on the course title OR Course Details

Scenario: User interacts with demo video
  Given I am a guest user
  When I click Course Catalog on the Home Page main navigation
  And I click on Watch Demo where it is available
  Then a the course details section should drop down and the demo video should begin playing
  And I should be able to stop the video by clicking on it OR by closing the course details section
  And every time I open course details for this course afterwards, the video should auto-play

# NOTE: 3 videos will not play, new resources are needed (BLS for Healthcare Providers Online part 1#90-1403, Heartsaver® First Aid Online Part 1#90-1400, Heartsaver® CPR AED Online Part 1#90-1402)

Scenario: User interacts with CME information (domestic)
  Given I am a guest user with domestic account
  When I click Course Catalog on the Home Page main navigation
  And I click on CME/CE Credits
  Then I should be taken to an informative PDF document regarding CME

Scenario: User interacts with CME information (international)
  Given I am a guest user with international account
  When I click Course Catalog on the Home Page main navigation
  And I click on CME/CE Credits
  Then a popup message should tell me I do not have access to this information outside of the United States

# NOTE: Internationalization is not completely implemented, so this switch will not appear at the moment

Scenario: User clicks to purchase course (as guest)
  Given I am a guest user
  When I click Course Catalog on the Home Page main navigation
  And I click Add to Cart for a selected course
  Then I should be routed to the Registration Page

Scenario: User clicks to purchase course (as registered user)
  Given I am a registered user
  And I am logged in to my account
  When I click Course Catalog on the Home Page main navigation
  And I click Add to Cart for a selected course
  Then I should be taken to the Shopping Cart Page (first step of Course Purchase)
  And the course that I have chosen should be in the cart

Scenario: User visits 'Locate a Skills Session' page via Course Catalog
  Given I am a guest user
  When I click Course Catalog on the Home Page main navigation
# NOTE: This link has not yet been connected to the proper page

Scenario: User visits 'Other ECC Courses' page via Course Catalog
  Given I am a guest user
  When I click Course Catalog on the Home Page main navigation
# NOTE: This link has not yet been connected to the proper page