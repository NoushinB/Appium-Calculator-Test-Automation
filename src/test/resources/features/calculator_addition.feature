Feature: Addition Tests

  Background:
		#@PRECOND_CAL-10
    Given User is on the calculator page
    And calculator is cleared

	#Add Two Positive numbers
  @TEST_CAL-11 @TESTSET_CAL-3
  Scenario Outline: Add Two Positive numbers
		# This scenario tests the addition of two positive_numbers
    When User enter "<first number>"
    And User press "+"
    And User enter "<second number>"
    And User press "="
    Then the display shows "<result number>"

    Examples:
      | first number | second number | result number |
      | 11            | 2            | 3             |
