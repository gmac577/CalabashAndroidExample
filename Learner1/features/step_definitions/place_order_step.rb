Given(/^I am on the order type screen$/) do
  #query("* text:'Order type'")
  page(OrderType).await
end

When(/^I select the sandwich radio button$/) do
  page(OrderType).select_sandwich
end

Then(/^The next button becomes enabled$/) do
  query("* id:'next_button' enabled:true")
end

When(/^I select the salad radio button$/) do
  touch query("* text:'Salad'")
end

Given(/^I am on order screen with sandwich slected$/) do
  page(OrderType).select_sandwich
end

When(/^I click the Next button$/) do
  touch query("* id:'next_button' enabled:true")
end

Then(/^The Bread page opens$/) do
  pending # express the regexp above with the code you wish you had
end

Given(/^I am on order screen with salad slected$/) do
  page(OrderType).select_salad
end

Then(/^The Salad Type page opens$/) do
  pending # express the regexp above with the code you wish you had
end