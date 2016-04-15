Feature: Navigating to various pages through the main menu.
  
  Scenario: As a user, I should be able to navigate to all of the various pages.
    Given that I am on the main page
      When I select "Timer" from the menu
      Then I will see the text "How long would you like to meditate?"
      When I select "Settings" from the menu
      Then I will see the text "Select an Opening Bell"
      When I select "Find a Center" from the menu
      Then I will see the text "Find meditation centers within"
      When I select "How-To" from the menu
      Then I will see the text "How to Meditate"
      When I select "Stats" from the menu
      Then I will see the text "Last Session"
