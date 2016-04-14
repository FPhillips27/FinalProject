Feature: Statistics Page
  Scenario: As a user, I should be able to navigate to the Stats page to get insight about my practice.
    Given that I am on the main page
    When I select "Stats" from the menu
    Then I will see the text "Last Session"
    And I will see the element ".lastSessionDate"
    And I will see the element ".lastSessionDuration"
    And I will see the text "Completed Sessions"
    And I will see the element ".completedSessions"
    And I will see the text "Meditation Streak"
    And I will see the element ".meditationStreak"
    And I will see the text "Total Time Meditated"
    And I will see the element ".totalMeditationTime"
    