Feature: Multiplication Tests

  Background:
		#@PRECOND_CAL-10
    Given User is on the calculator page

	#Multiply Two Positive numbers
  @TEST_CAL-24 @TESTSET_CAL-5
  Scenario Outline: Multiply Two Positive numbers
		# Multiply Two Positive numbers
    When User enters "first_number"
    And User presses "*"
    And User enters "second_number"
    And User presses "="
    Then the display shows "result_number"

    Examples:
      | first_number | second_number | result |
      | 2            | 3             | 6      |
      | 10           | 25            | 250    |

	#Multiply a Positive number by a Negative number
  @TEST_CAL-26 @TESTSET_CAL-5
  Scenario Outline: Multiply a Positive number by a Negative number
		# Multiply a Positive number by a Negative number
    When User enters "first_number"
    And User presses "*"
    And User enters "second_number"
    And User presses "="
    Then the display shows "result_number"

    Examples:
      | first_number | second_number | result |
      | 4            | -7            | -28    |
      | -12          | 6             | -72    |

	#Multiply Two Negative number
  @TEST_CAL-25 @TESTSET_CAL-5
  Scenario Outline: Multiply Two Negative number
		# Multiply Two Negative numbers
    When User enters "first_number"
    And User presses "*"
    And User enters "second_number"
    And User presses "="
    Then the display shows "result_number"

    Examples:
      | first_number | second_number | result |
      | -5           | -2            | 10     |
      | -8           | -3            | 24     |

	#Multiply by Zero
  @TEST_CAL-27 @TESTSET_CAL-5
  Scenario: Multiply by Zero
		#  Multiply by Zero
    When User enters "first_number"
    And User presses "*"
    And User enters "0"
    And User presses "="
    Then the display shows "0"

	#Enter Nothing Before Operator for Multiplication
  @TEST_CAL-28 @TESTSET_CAL-5
  Scenario: Enter Nothing Before Operator for Multiplication
		# Enter Nothing Before Operator for Multiplication
    When User presses "*"
    And User enters "number"
    And User presses "="
    Then the display shows "Error"

	#Enter Nothing After Operator for Multiplication
  @TEST_CAL-29 @TESTSET_CAL-5
  Scenario: Enter Nothing After Operator for Multiplication
		# Enter Nothing After Operator for Multiplication
    When User enters "number"
    And User presses "*"
    And User presses "="
    Then the display shows "Error"

