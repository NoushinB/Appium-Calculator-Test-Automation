Feature: Subtraction Tests

  Background:
		#@PRECOND_CAL-10
    Given User is on the calculator page

	#Subtract Two Positive numbers
  @TEST_CAL-18 @TESTSET_CAL-4
  Scenario Outline: Subtract Two Positive numbers
		# This scenario tests the subtraction of two positive numbers
    When User enter "<first_number>"
    And User press "-"
    And User enter "<second_number>"
    And User press "="
    Then the display shows "<result_number>"


    Examples:
      | first_number | second_number | result_number |
      | 5            | 2             | 3             |
      | 10.2           | 6             | 4.2             |

    #Subtract Two Negative numbers
  @TEST_CAL-19 @TESTSET_CAL-4
  Scenario Outline: Subtract Two Negative numbers
		# This scenario tests the subtraction of two negative numbers
    When User enter "<first number>"
    And User press "+/-"
    And User press "-"
    And User enter "<second number>"
    And User press "+/-"
    And User press "="
    Then the display shows "<negative result number>"

    Examples:
      | first number | second number | negative result number |
      | 5                     | 2                      | -3     |
      | 10                    | 7                      | -3     |

    #Subtract a Positive number from a Negative number
  @TEST_CAL-20 @TESTSET_CAL-4
  Scenario Outline: Subtract a Positive number from a Negative number
		# This scenario tests subtracting a positive number from a negative number
    When User enter "<first number>"
    And User press "+/-"
    And User press "-"
    And User enter "<second number>"
    And User press "="
    Then the display shows "<result>"

    Examples:
      | first number | second number | result |
      | 5               | 3                | -8     |
      | 10              | 4                | -14    |

    #Subtract a Negative number from a Positive number
  @TEST_CAL-21 @TESTSET_CAL-4
  Scenario Outline:  Subtract a Negative number from a Positive number
		# This scenario tests subtracting a Negative number from a Positive number
    When User enter "<first number>"
    And User press "-"
    And User enter "<second number>"
    And User press "+/-"
    And User press "="
    Then the display shows "<result number>"

    Examples:
      | first number | second number | result number |
      | 7                | 2               | 9      |
      | 10               | 5               | 15     |

#Enter Nothing After Operator for Subtraction
  @TEST_CAL-22 @TESTSET_CAL-4
  Scenario Outline: Enter Nothing After Operator for Subtraction
		# This scenario tests the case when nothing is entered after the subtraction operator
    When User enter "<first_number>"
    And User press "-"
    And User press "="
    Then the display shows "Error"

    Examples:
      | first_number |
      | 5            |
