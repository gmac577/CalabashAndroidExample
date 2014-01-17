@Time
Feature: Selecting the Toasting Time Option for the Sandwich
  As a User I want to select the time duration option to toast my sandwich.
  The scenarios will include selecting the toast yes or no options and navigating to the next
  corresponding screen.

  Background: Navigating to the Toasted Time Screen
    Given I am selecting the toasting time for my sandwich
  
  
Scenario: Selecting the Toasting Option for a Sandwich
  	Given I am on the Toast time screen
  	And I select the two minutes option
    When I touch the Next button
  	Then I will be placed on the Your info screen