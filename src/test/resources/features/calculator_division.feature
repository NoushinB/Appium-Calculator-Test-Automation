Feature: Division Tests

  Background:
		#@PRECOND_CAL-10
    Given User is on the calculator page

	#Divide Two Positive numbers
  @TEST_CAL-30 @TESTSET_CAL-6
  Scenario Outline: Divide Two Positive numbers
		# Divide Two Positive number
    When User enter "<first_number>"
    And User press "/"
    And User enter "<second_number>"
    And User press "="
    Then the display shows "<result_number>"

    Examples:
      | first_number | second_number | result_number |
      | 10           | 2             | 5             |
      | 24           | 3             | 8             |
      | 1            | 2             | 0.5           |

    	#Divide Two Negative Numbers
  @TEST_CAL-31 @TESTSET_CAL-6
  Scenario Outline: Divide Two Negative Numbers
		#  Divide Two Negative numbers
    When User enter "<first_number>"
    And User press "+/-"
    And User press "/"
    And User enter "<second_number>"
    And User press "+/-"
    And User press "="
    Then the display shows "<result_number>"

    Examples:
      | first_number | second_number | result_number |
      | 15           | 3             | 5             |
      | 10           | 4             | 2.5           |

    	#Divide a Positive number by a Negative number
  @TEST_CAL-32 @TESTSET_CAL-6
  Scenario Outline: Divide a Positive number by a Negative number
		# Divide a Positive number by a Negative number
    When User enter "<first_number>"
    And User press "+/-"
    And User press "/"
    And User enter "<second_number>"
    And User press "="
    Then the display shows "<result_number>"

    Examples:
      | first_number | second_number | result_number |
      | 5            | 2             | -2.5          |


    #Division by Zero
  @TEST_CAL-33 @TESTSET_CAL-6
  Scenario Outline: Division by Zero
		# Division by Zero
    When User enter "<first_number>"
    And User press "/"
    And User enter "0"
    And User press "="
    Then the display shows "Error"

    Examples:
      | first_number |
      | 10           |

    #Division with Zero as Numerator
  @TEST_CAL-34 @TESTSET_CAL-6
  Scenario Outline: Division with Zero as Numerator
		# Division with Zero as Numerator
    When User enter "0"
    And User press "/"
    And User enter "<second_number>"
    And User press "="
    Then the display shows "0"
    Examples:
      | second_number |
      | 10            |