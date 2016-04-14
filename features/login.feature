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
    