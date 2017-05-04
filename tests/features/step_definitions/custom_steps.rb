require 'selenium-cucumber'
require 'appium_lib'
# Do Not Remove This File
# Add your custom steps here
# $driver is instance of webdriver use this instance to write your custom code

Given(/^I open test page$/) do
	link = 'file:///'
  	link+= File.absolute_path("test_page.html")
  	navigate_to(link) 
end

Then(/^I should get logged in$/) do
  verify_username
end


def verify_username(username)
  ele_user_name = $driver.find_element(:xpath, "/html/body/div[7]/div[3]/div/div[1]/div[4]/div[1]/div[1]/div[1]/div/div[4]/div[1]/a")
  if ele_user_name.text !=@username
    raise "Invalid user name"
  else
    puts "User gets logged in successfully"
  end
end
