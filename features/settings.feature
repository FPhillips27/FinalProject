Feature: Users should be able to manipulate their settings.
  Scenario: I should be able to select a starting bell.
    Given that I am logged into the main page
    When I select "Settings" from the menu
    Then I will see the text "Select an Opening Bell"
    When I click ".belldropdown .openingbell"
    And I select "Tibetan Singing Bowl" from the dropdown ".belldropdown .openingbell"
    Then "Tibetan Singing Bowl" will be selected in the dropdown ".belldropdown .openingbell"
    
  Scenario: I should be able to select a ending bell.
    Given that I am logged into the main page
    When I select "Settings" from the menu
    Then I will see the text "Select an Ending Bell"
    When I click ".belldropdown .ending"
    And I select "Japanese Temple Bell" from the dropdown ".belldropdown .endingbell"
    Then "Japanese Temple Bell" will be selected in the dropdown ".belldropdown .endingbell"
    
  Scenario: I should be able to select an interval bell.
    Given that I am logged into the main page
    When I select "Settings" from the menu
    Then I will see the text "Select an Interval Bell"
    When I click ".belldropdown .intervalbell"
    And I select "Cyber Bell" from the dropdown ".belldropdown .intervalbell"
    Then "Cyber Bell" will be selected in the dropdown ".belldropdown .intervalbell"
    