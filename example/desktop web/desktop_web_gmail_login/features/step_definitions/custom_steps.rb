require 'selenium-cucumber'

# Do Not Remove This File
# Add your custom steps here
# $driver is instance of webdriver use this instance to write your custom code




Then(/^I should get logged in$/) do
  verify_username
end


def verify_username
  ele_user_name = $driver.find_element(:xpath, "/html/body/div[7]/div[3]/div/div[1]/div[4]/div[1]/div[1]/div[1]/div/div[4]/div[1]/a")
  if ele_user_name.text !="qasage.test@gmail.com"
    raise "Invalid user name"
  else
    puts "User gets logged in successfully"
  end
end