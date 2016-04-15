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
      
  Scenario: As a user, I should be able to find a meditation center near me using my Zipcode.
    Given that I am on the main page
      When I select "Find a Center" from the menu
      Then I will see the element ".map"
      And I will see the element ".locationOptionPicker"
      When I select ".zipCode" from ".locationOptionPicker"
      And I fill in "94102" for the field "zipcode_input"
      And I select "5" in the dropdown ".radius_selector"
      And I click "Find a Center"
      Then I will see the element "meditation-center-results"
      And I will see the text "San Francisco Zen Center"
      And I will see the text "94102"
      And I will see the text "300 Page St."

  Scenario: As a user, I should be able to find a meditation center near me using my address.
      Given that I am on the main page
      When I select "Find a Center" from the menu
      Then I will see the element ".map"
      And I will see the element ".locationOptionPicker"
      When I select ".streetAddress" from ".locationOptionPicker"
      And I fill in "123 Fake St. Anytown, USA" for the field "streetAddress_input"
      And I select "5" in the dropdown ".radius_selector"
      And I click "Find a Center"
      Then I will see the element "meditation-center-results"
      And I will see the text "San Francisco Zen Center"
      And I will see the text "94102"
      And I will see the text "300 Page St."
      
  Scenario: As a user, I should be able to find a meditation center near me using my current location.
      Given that I am on the main page
      When I select "Find a Center" from the menu
      Then I will see the element ".map"
      And I will see the element ".locationOptionPicker"
      When I select ".currentLocation" from ".locationOptionPicker"
      And I click "Find a Center"
      Then I will see the element "meditation-center-results"
      And I will see the text "San Francisco Zen Center"
      And I will see the text "94102"
      And I will see the text "300 Page St."
      
  Scenario: As a user, I should see an error message if there are no meditation centers near me.
      Given that I am on the main page
      When I select "Find a Center" from the menu
      Then I will see the element ".map"
      And I will see the element ".locationOptionPicker"
      When I select ".streetAddress" from ".locationOptionPicker"
      And I fill in "123 Fake St. Anytown, USA" for the field "streetAddress_input"
      And I select "1" in the dropdown ".radius_selector"
      And I click "Find a Center"
      Then I will see the element "meditation-center-results"
      And I will see the text "Sorry, we can't find any meditation centers near you."
      
  Scenario: As a user, I should see an error message if I enter an invalid address.
      Given that I am on the main page
      When I select "Find a Center" from the menu
      Then I will see the element ".map"
      And I will see the element ".locationOptionPicker"
      When I select ".streetAddress" from ".locationOptionPicker"
      And I fill in "sgs;gkl;sgkm" for the field "streetAddress_input"
      And I select "1" in the dropdown ".radius_selector"
      And I click "Find a Center"
      Then I will see the text "Please enter a valid address"
      