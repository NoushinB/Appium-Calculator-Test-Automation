Feature: Multiplication Tests

  Background:
		#@PRECOND_CAL-10
    Given User is on the calculator page

	#Multiply Two Positive numbers
  @TEST_CAL-24 @TESTSET_CAL-5
  Scenario Outline: Multiply Two Positive numbers
		# Multiply Two Positive numbers
    When User enter "<first_number>"
    And User press "*"
    And User enter "<second_number>"
    And User press "="
    Then the display shows "<result_number>"

    Examples:
      | first_number | second_number | result_number |
      | 2.5          | 2             | 5             |
      | 10           | 25            | 250           |

    #Multiply a Positive number by a Negative number
  @TEST_CAL-26 @TESTSET_CAL-5
  Scenario Outline: Multiply a Positive number by a Negative number
		# Multiply a Positive number by a Negative number
    When User enter "<first_number>"
    And User press "+/-"
    And User press "*"
    And User enter "<second_number>"
    And User press "="
    Then the display shows "<result_number>"

    Examples:
      | first_number | second_number | result_number |
      | 4            | 7             | -28           |
      | 12           | 6             | -72           |

    #Multiply Two Negative number
  @TEST_CAL-25 @TESTSET_CAL-5
  Scenario Outline: Multiply Two Negative number
		# Multiply Two Negative numbers
    When User enter "<first_number>"
    And User press "+/-"
    And User press "*"
    And User enter "<second_number>"
    And User press "+/-"
    And User press "="
    Then the display shows "<result_number>"

    Examples:
      | first_number | second_number | result_number |
      | 5            | 2             | 10            |
      | 8            | 3             | 24            |


#Multiply by Zero
  @TEST_CAL-27 @TESTSET_CAL-5
  Scenario Outline: Multiply by Zero
		#  Multiply by Zero
    When User enter "<first_number>"
    And User press "*"
    And User enter "0"
    And User press "="
    Then the display shows "0"

    Examples:
      | first_number |
      | 4            |
      | 4.5          |

    	#Enter Nothing After Operator for Multiplication
  @TEST_CAL-29 @TESTSET_CAL-5
  Scenario Outline: Enter Nothing After Operator for Multiplication
		# Enter Nothing After Operator for Multiplication
    When User enter "<first_number>"
    And User press "*"
    And User press "="
    Then the display shows "Error"

    Examples:
      | first_number |
      | 4            |


    #Enter Nothing Before Operator for Multiplication
  @TEST_CAL-28 @TESTSET_CAL-5
  Scenario Outline: Enter Nothing Before Operator for Multiplication
		# Enter Nothing Before Operator for Multiplication
    When User press "*"
    And User enter "<number>"
    And User press "="
    Then the display shows "0"

    Examples:
      | number |
      | 4      |


