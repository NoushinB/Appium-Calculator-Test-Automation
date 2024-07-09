Feature: Subtraction Tests

  Background:
		#@PRECOND_CAL-10
    Given User is on the calculator page

	#Subtract Two Positive numbers
  @TEST_CAL-18 @TESTSET_CAL-4
  Scenario Outline: Subtract Two Positive numbers
		# This scenario tests the subtraction of two positive numbers
    When User enters "<first_number>"
    And User presses "-"
    And User enters "<second_number>"
    And User presses "="
    Then the display shows "<result_number>"


    Examples:
      | first_number | second_number | result_number |
      | 5            | 2             | 3             |
      | 10           | 7             | 3             |

