Feature: User is able to convert area units in To field

  Background:
    Given I click on Got it button
    And I land on Area screen

  @wip
  Scenario Outline:
    When I see app Area menu
    Then I select "<target>" from To column
    And I get "<result>" in To field

    Examples:
      | target        | result       |
      | Sq Kilometre  | 1            |
      | Sq Metre      | 1000000      |
      | Sq Centimetre | 100000000005 |



