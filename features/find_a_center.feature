Feature: As a user, I should be able to find Meditation Centers near me.
  Scenario: As a user, I should be able to access the meditation center map page.
    Given that I am on the main page
      When I select "Find a Center" from the menu
      Then I will see the element ".map
      And I will see the element ".zipcode_input"
      And I will see the element ".radius_selector"
      And I will see the text "Find meditation centers within"
      And I will see the text "miles of"
      And I will see the text "Please enter your 5-digit zipcode"
      And I will see the text "Find a Center"
      
  Scenario: As a user, I should be able to find a meditation center near me.
    Given that I am on the main page
      When I select "Find a Center" from the menu
      Then I will see the element ".map
      When I fill in "94102" for the field "zipcode_input"
      And I select "5" in the dropdown ".radius_selector"
      And I click "Find a Center"
      Then I will see the element "meditation-center-results"
      And I will see the text "San Francisco Zen Center"
      And I will see the text "94102"
      And I will see the text "300 Page St."
      