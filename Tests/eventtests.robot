*** Settings ***
Resource  ${CURDIR}/../Libraries/StepDefinition/EventSteps.robot

*** Test Cases ***
Validate User Registration
    Given I am on eventCinemas HomePage
    When I try to register without providing any inputs
    Then I should get an error




