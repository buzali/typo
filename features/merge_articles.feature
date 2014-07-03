Feature: Merge Articles
  As a blog administrator
  In order to avoid having two similar articles
  I want to be able to merge articles

  Background:
    Given the blog is set up
    And the following articles exist
    |  id  |  title    |  body               |
    |  2   |  Foobar   |  LeremIpsum         |
    |  3   |  Foobar2  |  LeremIpsum Dolor   |


  Scenario: Successfully merge articles
  	Given I am logged into the admin panel
    And I am on the article page for "Foobar"
    And show me the page
    And I fill in "merge_with" with "3"
    Then the article "Foobar" should have the body "LeremIpsum LeremIpsum Dolor"
    And show me the page

  Scenario: A non-admin cannot merge two articles


  Scenario: When articles are merged, the merged article should contain the text of both previous articles


  Scenario:

  Scenario: