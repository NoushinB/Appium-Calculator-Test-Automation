Feature: Division Tests

  Background:
		#@PRECOND_CAL-10
    Given User is on the calculator page

	#Divide Two Positive numbers
  @TEST_CAL-30 @TESTSET_CAL-6
  Scenario Outline: Divide Two Positive numbers
		# Divide Two Positive number
    When the user enters "first_number"
    And the user presses "/"
    And the user enters "second_number"
    And the user presses "="
    Then the display shows "result_number"

    Examples:
      | first_number | second_number | result |
      | 10           | 2             | 5      |
      | 24           | 3             | 8      |
      | 1            | 2             | 0.5    |

	#Divide Two Negative Numbers
  @TEST_CAL-31 @TESTSET_CAL-6
  Scenario Outline: Divide Two Negative Numbers
		#  Divide Two Negative numbers
    When the user enters "first_number"
    And the user presses "/"
    And the user enters "second_number"
    And the user presses "="
    Then the display shows "result_number"

    Examples:
      | first_number | second_number | result |
      | -15          | -3            | 5      |
      | -20          | -5            | 4      |

	#Divide a Positive number by a Negative number
  @TEST_CAL-32 @TESTSET_CAL-6
  Scenario Outline: Divide a Positive number by a Negative number
		# Divide a Positive number by a Negative number
    When the user enters "first_number"
    And the user presses "/"
    And the user enters "second_number"
    And the user presses "="
    Then the display shows "result_number"

    Examples:
      | first_number | second_number | result |
      | 12           | -4            | -3     |
      | -21          | 6             | -3.5   |

	#Division by Zero
  @TEST_CAL-33 @TESTSET_CAL-6
  Scenario: Division by Zero
		# Division by Zero
    When the user enters "any_number"
    And the user presses "/"
    And the user enters "0"
    And the user presses "="
    Then the display shows "Error"

	#Division with Zero as Numerator
  @TEST_CAL-34 @TESTSET_CAL-6
  Scenario: Division with Zero as Numerator
		# Division with Zero as Numerator
    When the user enters "0"
    And the user presses "/"
    And the user enters "second_number"
    And the user presses "="
    Then the display shows "0"

