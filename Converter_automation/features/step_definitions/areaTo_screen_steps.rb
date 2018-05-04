When(/^I see app Area menu$/) do

  find_element(id: "radio_group_to").find_element(xpath: "//android.widget.RadioButton[@text='Sq Kilometre']")
  find_element(id: "radio_group_to").find_element(xpath: "//android.widget.RadioButton[@text='Sq Metre']")
  find_element(id: "radio_group_to").find_element(xpath: "//android.widget.RadioButton[@text='Sq Centimetre']")

end

When(/^I select "([^"]*)" from To column$/) do |value|

  find_element(id: "radio_group_to").find_element(xpath: "//android.widget.RadioButton[@text='#{value}']").click

end









