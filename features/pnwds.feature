Feature: Demonstrate Behat and the Drupal Extension
  In order to demonstrate that testing sites with Behat is awesome
  As a presenter at PNWDS 2012
  I need to use the step definitions of the Drupal Extension

  @api
  Scenario: Test the functionality of drush aliases
    Given I am logged in as a user with the "administrator" role
    When I click "Add content"
    Then I should see the link "Article"
    And I should see the link "Basic page"

  @api
  Scenario: Test the ability to target links within table rows
    Given I am logged in as a user with the "administrator" role
    When I am at "admin/structure/types"
    And I click "manage fields" in the "Article" row
    Then I should be on "admin/structure/types/manage/article/fields"
    And I should see text matching "Add new field"
