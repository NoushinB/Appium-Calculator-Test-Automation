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
      | 10           | 2             | 5      |
      | 24           | 3             | 8      |
      | 1            | 2             | 0.5    |


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