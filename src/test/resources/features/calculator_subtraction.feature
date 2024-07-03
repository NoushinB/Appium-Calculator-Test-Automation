Feature: Subtraction Tests

  Background:
		#@PRECOND_CAL-10
    Given User is on the calculator page

	#Subtract Two Positive Integers
  @TEST_CAL-18 @TESTSET_CAL-4
  Scenario Outline: Subtract Two Positive Integers
		# This scenario tests the subtraction of two positive integers
    When User enters "first_positive_integer"
    And User presses "-"
    And User enters "second_positive_integer"
    And User presses "="
    Then the display shows "integer_number"


    Examples:
      | first_positive_integer | second_positive_integer | result |
      | 5                      | 2                        | 3      |
      | 10                     | 7                        | 3      |

	#Subtract Two Negative Integers
  @TEST_CAL-19 @TESTSET_CAL-4
  Scenario Outline: Subtract Two Negative Integers
		# This scenario tests the subtraction of two negative integers
    When User enters "first_negative_integer"
    And User presses "-"
    And User enters "second_negative_integer"
    And User presses "="
    Then the display shows "integer"

    Examples:
      | first_negative_integer | second_negative_integer | result |
      | -5                     | -2                      | -3     |
      | -10                    | -7                      | -3     |

	#Subtract a Positive Integer from a Negative Integer
  @TEST_CAL-20 @TESTSET_CAL-4
  Scenario Outline: Subtract a Positive Integer from a Negative Integer
		# This scenario tests subtracting a positive integer from a negative integer
    When User enters "negative_integer"
    And User presses "-"
    And User enters "positive_integer"
    And User presses "="
    Then the display shows "result"

    Examples:
      | negative_integer | positive_integer | result |
      | -5               | 3                | -8     |
      | -10              | 4                | -14    |

	#Subtract a Negative Integer from a Positive Integer
  @TEST_CAL-21 @TESTSET_CAL-4
  Scenario Outline:  Subtract a Negative Integer from a Positive Integer
		# This scenario tests subtracting a negative integer from a positive integer
    When User enters "positive_integer"
    And User presses "-"
    And User enters "negative_integer"
    And User presses "="
    Then the display shows "result"

    Examples:
      | positive_integer | negative_integer | result |
      | 7                | -2               | 9      |
      | 10               | -5               | 15     |

	#Enter Nothing After Operator for Subtraction
  @TEST_CAL-22 @TESTSET_CAL-4
  Scenario: Enter Nothing After Operator for Subtraction
		# This scenario tests the case when nothing is entered after the subtraction operator
    When User enters "integer"
    And User presses "-"
    And User presses "="
    Then the display shows "Error"