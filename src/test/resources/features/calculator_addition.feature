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
      | 11           | 2             | 13            |
      | 2.5          | 3             | 5.5           |


    # Add Two Negative numbers
  @TEST_CAL-13 @TESTSET_CAL-3
  Scenario Outline: Add Two Negative numbers
		# This scenario tests the addition of two negative integers

    When User enter "<first number>"
    And User press "+/-"
    And User press "+"
    And User enter "<second number>"
    And User press "+/-"
    And User press "="
    Then the display shows "<result_negative_number> "

    Examples:
      | first number | second number | result_negative_number |
      | 2            | 3             | -5                     |

    	#Enter Nothing After Operator
  @TEST_CAL-12 @TESTSET_CAL-3
  Scenario Outline: Enter Nothing After Operator
		# Tests the addition of any numeric value
    When User enter "<first number>"
    And User press "+"
    And User press "="
    Then the display shows "Error"

    Examples:
      | first number |
      | 35            |