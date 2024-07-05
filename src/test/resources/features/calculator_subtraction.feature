Feature: Subtraction Tests

  Background:
		#@PRECOND_CAL-10
    Given User is on the calculator page

	#Subtract Two Positive numbers
  @TEST_CAL-18 @TESTSET_CAL-4
  Scenario Outline: Subtract Two Positive numbers
		# This scenario tests the subtraction of two positive numbers
    When User enters "first_positive_number"
    And User presses "-"
    And User enters "second_positive_number"
    And User presses "="
    Then the display shows "result_number"


    Examples:
      | first_positive_number | second_positive_number | result |
      | 5                     | 2                      | 3      |
      | 10                    | 7                      | 3      |

	#Subtract Two Negative numbers
  @TEST_CAL-19 @TESTSET_CAL-4
  Scenario Outline: Subtract Two Negative numbers
		# This scenario tests the subtraction of two negative numbers
    When User enters "first_negative_number"
    And User presses "-"
    And User enters "second_negative_number"
    And User presses "="
    Then the display shows "result_number"

    Examples:
      | first_negative_number | second_negative_number | result |
      | -5                    | -2                     | -3     |
      | -10                   | -7                     | -3     |

	#Subtract a Positive number from a Negative number
  @TEST_CAL-20 @TESTSET_CAL-4
  Scenario Outline: Subtract a Positive number from a Negative number
		# This scenario tests subtracting a positive number from a negative number
    When User enters "negative_number"
    And User presses "-"
    And User enters "positive_number"
    And User presses "="
    Then the display shows "result"

    Examples:
      | negative_number | positive_number | result |
      | -5              | 3               | -8     |
      | -10             | 4               | -14    |

	#Subtract a Negative number from a Positive number
  @TEST_CAL-21 @TESTSET_CAL-4
  Scenario Outline:  Subtract a Negative number from a Positive number
		# This scenario tests subtracting a Negative number from a Positive number
    When User enters "positive_number"
    And User presses "-"
    And User enters "negative_number"
    And User presses "="
    Then the display shows "result_number"

    Examples:
      | positive_integer | negative_integer | result |
      | 7                | -2               | 9      |
      | 10               | -5               | 15     |

	#Enter Nothing After Operator for Subtraction
  @TEST_CAL-22 @TESTSET_CAL-4
  Scenario: Enter Nothing After Operator for Subtraction
		# This scenario tests the case when nothing is entered after the subtraction operator
    When User enters "number"
    And User presses "-"
    And User presses "="
    Then the display shows "Error"

