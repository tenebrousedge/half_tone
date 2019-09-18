Feature: Creating an Account
  Scenario:
    Given I visit the page 'users/signup'
    When I enter the email 'testuser@half_tone.test' and password 'my_password'
    And I click the 'Create Account' button
