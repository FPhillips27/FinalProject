Feature: Users should be able to log in.
  Scenario: As a user, I should be able to see the login page.
    Given that I am on the main page
    When I select "Settings" from the menu
    Then I will see the text "Login"
    And I will see the field "username_input"
    And I will see the field "password_input"
    And I will see the element "submit.button"
    And I will see the text "If you don’t login, we can’t keep track of your meditation history."
    
  Scenario: As a user, I should be able to login and log out.
    Given that I am on the main page
    When I select "Settings" from the menu
    Then I will see the text "Login"
    When I input "testuser@gmail.com" for the field "username_input"
    And I input "password" for the field "password_input"
    And I click "Submit"
    Then I will see the text "Logout"
    And I will see the text "Logged in as: testuser@gmail.com"
    
    When I click "Logout"
    Then I will not see the text "Logout"
    And I will not see the text "Logged in as: testuser@gmail.com"
    And I will see the text "Login"
    
  Scenario: As a user who enters the wrong password, I should be told that I'm wrong.
    Given that I am on the main page
    When I select "Settings" from the menu
    Then I will see the text "Login"
    When I input "testuser@gmail.com" for the field "username_input"
    And I input a bad password
    And I click "Submit"
    Then I will see the text "Sorry, either your user name or email is incorrect."
    And I will not see the text "Logged in as: testuser@gmail.com"

  Scenario: As a user, if I enter the wrong password too many times, I should be told my account is locked.
    Given that I am on the main page
    When I select "Settings" from the menu
    Then I will see the text "Login"
    When I input "testuser@gmail.com" for the field "username_input"
    And I input a bad password
    And I click "Submit"
    And I input a bad password
    And I click "Submit"
    And I input a bad password
    And I click "Submit"
    And I input a bad password
    And I click "Submit"
    And I input a bad password
    And I click "Submit"
    Then I will see the text "Sorry, your account is locked."
    And I will not see the text "Logged in as: testuser@gmail.com"
  