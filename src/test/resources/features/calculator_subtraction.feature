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
