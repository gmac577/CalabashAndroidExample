Feature: Select Order Type Screen
  In order to select an order type
  As an end user
  I want a screen to select an order type as sandwich or salad

Scenario: Select sandwich order
  Given I am on the order type screen
  When I select the sandwich radio button
  Then The next button becomes enabled

@wip
Scenario: Select salad order
  Given I am on the order type screen
  When I select the salad radio button
  Then The next button becomes enabled

@wip
Scenario: Clicking Next button with sandwich selected
  Given I am on order screen with sandwich slected
  When I click the Next button
  Then The Bread page opens

@wip
Scenario: Clicking Next button with salad selected
  Given I am on order screen with salad slected
  When I click the Next button
  Then The Salad Type page opens


