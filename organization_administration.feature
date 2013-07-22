Feature: Organization Administration

  As an administrator
  I want to have access to create new organizations and manage user roles
  So that I have full control of available organizations and their members

  As a guest user
  I want to receive an email when invited to join an organization
  So that I can register and access my account based on my organization role

  As a registered user
  I want to receive an email when invited to join an organization
  So that I can log in and access my account based on my organization role

# Topics: User Management, Organizations

## Test Cases
Scenario: Admin creates new organization
  Given I am an administrative user
# NOTE: open and functional, but instructional text in progress

Scenario: Admin invites guest user as Key Manager Admin role in an organization
  Given I am an administrative user
  And There is at least one organization that exists
# NOTE: open and functional, but instructional text in progress

Scenario: Admin invites registered user as Key Manager Admin role in an organization
  Given I am an administrative user
  And There is at least one organization that exists
# NOTE: open and functional, but instructional text in progress

Scenario: Guest user accepts organization role invitation
  Given I am a guest user
  And There is at least one organization that exists
  And I have been invited as a Key Manager Admin to at least one organization
# NOTE: open and functional, but instructional text in progress

Scenario: Registered user accepts organization role invitation
  Given I am a registered user user
  And There is at least one organization that exists
  And I have been invited as a Key Manager Admin to at least one organization
# NOTE: open and functional, but instructional text in progress