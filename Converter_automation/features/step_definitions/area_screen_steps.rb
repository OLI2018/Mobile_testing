Given(/^I land on "([^"]*)" popup$/) do |value|
  actual_value = find_element(id: "alertTitle").text
  # puts("Expected value is #{value}")
  # puts("Actual value is #{actual_value}")
  if actual_value != value
    fail("Expected value is #{value}, but actual value was #{actual_value}")
  end
end

When(/^I click on Got it button$/) do
  find_element(id: "button1").click
end

Then(/^I land on Area screen$/) do
  text("Area")
end


When(/^I click on Swap button$/) do
  find_element(id: "fab").click
end

Then(/^I see "([^"]*)" in From header$/) do |value|
  actual_value = find_element(id: "header_text_unit_from").text
  # puts("Expected value is #{value}")
  # puts("Actual value is #{actual_value}")
  if actual_value != value
    fail("Expected value is #{value}, but actual value was #{actual_value}")
  end
end

And(/^I see "([^"]*)" in To header$/) do |value|
  actual_value = find_element(id: "header_text_unit_to").text
  # puts("Expected value is #{value}")
  # puts("Actual value is #{actual_value}")
  if actual_value != value
    fail("Expected value is #{value}, but actual value was #{actual_value}")
  end

end

And(/^I click on Clear button$/) do
  find_element(id: "menu_clear").click
end

When(/^I enter "([^"]*)" to From field$/) do |value|
  puts("User entered value #{value}")
  find_element(id: "header_value_from").send_keys(value)

end

Then(/^I get "([^"]*)" in To field$/) do |value|
  actual_value = find_element(id: "header_value_to").text
  puts("Actual value in To field: " + actual_value)
  if actual_value != value
    fail("Expected value is #{value}, but actual value was #{actual_value}")
  end

end

When(/^I click on From field$/) do
  find_element(id: "header_value_from").click
end

And(/^I press "([^"]*)" on soft keyboard$/) do |value|
  digits = value.split("")
  digits.each do |key|
    digit = Integer(key)
    press_keycode 7 + digit
  end
end

When(/^I select "([^"]*)" from left column$/) do |value|
  find_element(id: "radio_group_from").find_element(xpath: "//android.widget.RadioButton[@text='#{value}']").click
end

When(/^I see app Area menu$/) do

  find_element(id: "radio_group_to").find_element(xpath: "//android.widget.RadioButton[@text='Sq Kilometre']")
  find_element(id: "radio_group_to").find_element(xpath: "//android.widget.RadioButton[@text='Sq Metre']")
  find_element(id: "radio_group_to").find_element(xpath: "//android.widget.RadioButton[@text='Sq Centimetre']")

end

When(/^I select "([^"]*)" from To column$/) do |value|

  find_element(id: "radio_group_to").find_element(xpath: "//android.widget.RadioButton[@text='#{value}']").click

end

