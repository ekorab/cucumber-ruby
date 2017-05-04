Feature: Gmail_login

  Scenario: Valid_gmail_login
	Given I navigate to "http://www.gmail.com"
	And I enter "qasage.test@gmail.com" into input field having id "Email"
	And I click on element having id "next"
	And I enter "Passw0rd_1" into input field having id "Passwd"
	When I click on element having id "signIn"
	And I wait for 10 sec
	Then I should get logged in
	And I close browser

