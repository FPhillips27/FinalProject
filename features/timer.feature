Feature: Meditation timer
  
  Scenario: As a user, I should be able to time my meditation session.
    Given that I am on the main page
    When I select "10:00" from timePicker "MeditationTime"
    And I click "START"
    Then I will see the element ".timer"
    And I will see the element ".counter"
    And I will see the element ".stop"
    And I will see the element ".pause"

  Scenario: As a user, I should be able to stop a meditation session early.
    Given that I am on the main page
    When I select "10:00" from timePicker "MeditationTime"
    And I click "START"
    Then I will see the element ".timer"
    And I will see the element ".counter"
    When I click ".stop"
    Then I will see the text "How long would you like to meditate?"
    And I will not see the element ".timer"
    And I will not see the element ".counter"
    
  Scenario: As a user, I should be able to pause my meditation session and then resume.
    Given that I am on the main page
    When I select "10:00" from timePicker "MeditationTime"
    And I click "START"
    Then I will see the element ".timer"
    And I will see the element ".counter"
    When I click ".pause"
    Then I will see the element ".pause-overlay"
    And I will see the element ".play"
    When I click ".play"
    Then I will not see the element ".pause-overlay"
    And I will not see the element ".play"
    
  Scenario: As a user, when my meditation is complete, I should see the text indicating that it has ended.
    Given that I select "Timer" in the main menu
    When I select ":30" from timePicker "MeditationTime"
    And I click "START"
    Then I will see the element ".timer"
    And I will see the element ".counter"
    When I wait 30 seconds
    Then I will see the text "Your session is complete."
    #There will also be a bell which goes off, but still unsure how to test for that in Cucumber.
    And I will not see the element ".timer"
    And I will not see the element ".counter"
