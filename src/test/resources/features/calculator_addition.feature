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
    Then the display shows "<negative result number> "

    Examples:
      | first number | second number | negative result number |
      | 2            | 3             | -5                     |

    #Add Positive and Negative numbers (Positive > Negative)
  @TEST_CAL-15 @TESTSET_CAL-3
  Scenario Outline: Add Positive and Negative numbers (Positive > Negative)
		# This scenario tests adding a negative number and a positive number where the positive is larger than the negative
    When User enter "<first number>"
    And User press "+/-"
    And User press "+"
    And User enter "<second number>"
    And User press "="
    Then the display shows "<positive result number>"

    Examples:
      | first number | second number | positive result number |
      | 3          | 8         |  5    |

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