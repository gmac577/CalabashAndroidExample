@bread
Feature: Selecting the Bread Option
  As a User I want to select the type of bread for my sandwich order.
  The scenarios will include selecting the Bread and navigating to the next
  corresponding screen.

Background: Navigating to the Bread Option screen
  Given I selected the Sandwich option


Scenario: Selecting the Bread Option for a Sandwich
  Given I am on the Bread screen
  When I select a Bread option
  And I touch the Next button
  Then I will be placed on the Meats screen
