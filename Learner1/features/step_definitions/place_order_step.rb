Given(/^I am on the order type screen$/) do
  #query("* text:'Order type'")
  page(OrderType).await
end

When(/^I select the sandwich radio button$/) do
  page(OrderType).select_sandwich
end

Then(/^The next button becomes enabled$/) do
  query("* id:'next_button' enabled:false")
end

When(/^I select the salad radio button$/) do
  pending # express the regexp above with the code you wish you had
end

Given(/^I am on order screen with sandwich slected$/) do
  pending # express the regexp above with the code you wish you had
end

When(/^I click the Next button$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^The Bread page opens$/) do
  pending # express the regexp above with the code you wish you had
end

Given(/^I am on order screen with salad slected$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^The Salad Type page opens$/) do
  pending # express the regexp above with the code you wish you had
end