@ordertype
Feature: Sandwich feature
  As a User I can select from the following order types: Sandwich or Salad.
  The scenarios will include selecting the Sandwich option and selecting the
  Salad option and navigating to the next corresponding screen.


Scenario: Place Order - Selecting Sandwich Option
  Given I am on the Order type screen
  When I select the Sandwich option
  And I touch the Next button
  Then I will be placed on the Bread screen


Scenario: Place Order - Selecting Sandwich Option
   Given I am on the Order type screen
   When I select the Sandwich option
   And I swipe to the right
   Then I will be placed on the Bread screen


Scenario: Place Order - Using the Previous button
     Given I am on the Order type screen
     When I select the Sandwich option
     And I touch the Next button
     And I touch the Previous button
     Then I will be placed on the Order type screen


Scenario: Place Order - Selecting Salad Option
  Given I am on the Order type screen
  When I select the Salad option
  And I touch the Next button
  Then I will be placed on the Salad type screen
