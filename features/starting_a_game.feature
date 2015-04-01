Feature: Starting the game
  In order to play battleships
  As a nostalgic player
  I want to start a new game

Scenario: Starting the game
  Given I am on the homepage
  And I follow "Start a New Game!"
  Then I should see "What's your name?"

Scenario: Registering
  Given I am on the registration page
  When I fill in name with "Phoebe"
  Then I should see "Hello, Phoebe"
  When the player does not input their name
  Then I should see "No name given."