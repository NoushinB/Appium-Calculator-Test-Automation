Feature: Division Tests

  Background:
		#@PRECOND_CAL-10
    Given User is on the calculator page

	#Divide Two Positive numbers
  @TEST_CAL-30 @TESTSET_CAL-6
  Scenario Outline: Divide Two Positive numbers
		# Divide Two Positive number
    When the user enters "<first_number>"
    And the user presses "/"
    And the user enters "<second_number>"
    And the user presses "="
    Then the display shows "<result_number>"

    Examples:
      | first_number | second_number | result_number |
      | 10           | 2             | 5      |
      | 24           | 3             | 8      |
      | 1            | 2             | 0.5    |

