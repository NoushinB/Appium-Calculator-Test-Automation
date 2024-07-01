Feature: Addition Tests

  Background:
		#@PRECOND_CAL-10
    Given User is on the calculator page

	#Add Two Positive Integers
  @TEST_CAL-11 @TESTSET_CAL-3
  Scenario Outline: Add Two Positive Integers
		# This scenario tests the addition of two positive_integer
    When User  enter "first_positive_integer"
    And User  press +
    And User  enter "second_positive_integer"
    And User  press =
    Then the display shows "positive_integer"

    Examples:
      | first number | second number | result |
      | 1          | 2           | 3     |

	#Enter Nothing After Operator
  @TEST_CAL-12 @TESTSET_CAL-3
  Scenario: Enter Nothing After Operator
		# Tests the addition of any numeric value
    When User enter "Number"
    And User press "+"
    And User press "="
    Then the display shows "Error"

	#{{Add Two Negative Integers}}
  @TEST_CAL-13 @TESTSET_CAL-3
  Scenario Outline: Add Two Negative Integers
		# This scenario tests the addition of two negative integers
    When User enters "first_negative_integer"
    And User presses "+"
    And User enters "second_negative_integer"
    And User presses "="
    Then the display shows "negative_integer "

    Examples:
      | first number | second number | result |
      | -2           | -3           | -5      |

	#Enter Nothing Before Operator
  @TEST_CAL-14 @TESTSET_CAL-3
  Scenario: Enter Nothing Before Operator
		# This scenario covers the case when the first number is not input When I press "+"
    When User presses "+"
    And User enters "first_number"
    And User presses "="
    Then the display shows "Error"

	#{{Add Positive and Negative Integers (Positive > Negative)}}
  @TEST_CAL-15 @TESTSET_CAL-3
  Scenario Outline: Add Positive and Negative Integers (Positive > Negative)
		# This scenario tests adding a negative integer and a positive integer where the positive is larger than the negative
    When User enter "negative_integer"
    And User press +
    And User enter "positive_integer"
    And User press =
    Then the display shows "<positive_integer>"

    Examples:
      | first number | second number | result |
      | -3          | 8         |  5    |

	#{{Add a Large Number}}
  @TEST_CAL-17 @TESTSET_CAL-3
  Scenario Outline: Add a Large Number
		# Tests the addition of  large numbers
    When User enter "first_large_number"
    And User press +
    And User enter "second_large_number"
    And User press =
    Then the display shows "Error"

    Examples:
      | first number | second number | result |
      | 100,000,000           | 900,00,00            | 1,000,000,000      |

	#Add Positive and Negative Integers (Positive < Negative)
  @TEST_CAL-16 @TESTSET_CAL-3
  Scenario Outline: Add Positive and Negative Integers (Positive < Negative)
		# This scenario tests adding a negative integer and a positive integer where the negative is larger than the positive
    Given the calculator is turned on
    When User enter "negative_integer"
    And User press +
    And User enter "Positive_integer"
    And User press =
    Then the display shows "negative_integer"

    Examples:
      | first number | second number | result |
      | -7           | 5           | -2     |

