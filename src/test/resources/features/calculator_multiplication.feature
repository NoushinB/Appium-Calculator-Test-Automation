Feature: Multiplication Tests

  Background:
		#@PRECOND_CAL-10
    Given User is on the calculator page

	#Multiply Two Positive numbers
  @TEST_CAL-24 @TESTSET_CAL-5
  Scenario Outline: Multiply Two Positive numbers
		# Multiply Two Positive numbers
    When User enters "<first_number>"
    And User presses "*"
    And User enters "<second_number>"
    And User presses "="
    Then the display shows "<result_number>"

    Examples:
      | first_number | second_number | result_number |
      | 2            | 3             | 6      |
      | 10           | 25            | 250    |



