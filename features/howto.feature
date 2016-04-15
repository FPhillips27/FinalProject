Feature: As a user, I should be able to learn more about how to meditate.
  Scenario: As a user, I should be able to navigate to the how-to page.
    Given that I am on the main page
    When I select "How-To" from the menu
    Then I will see the text "There are a number of different kinds of meditation. Select the play button to see a video demonstrating how to get started."
    And I will see the element ".play .zazen"
    And I will see the element ".play .shambhala"
    And I will see the element ".play .transcandentalist"
    
  Scenario: As a user, I should be able to watch and close an instructional video.
    Given that I am on the main page
    When I select "How-To" from the menu
    And I click ".play .zazen"
    Then I will see the element ".modal.fade"
    And I will see the text "Zazen Instructional Video"
    And I will see the text "Credit: Ron Gego"
    When I click "CLOSE"
    Then I will not see the element ".modal .fade"
    And I will not see the text "Zazen Instructional Video"