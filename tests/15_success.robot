*** Settings ***
Documentation    success
Metadata         ID                           15
Metadata         Automation priority          null
Metadata         Test case importance         Low
Resource         squash_resources.resource
Test Setup       Test Setup
Test Teardown    Test Teardown


*** Test Cases ***
success
    [Documentation]    success

    Given I have to do a BDD test
    When I try to inject some comments
    Then nothing else to add
    And I try to inject some comments


*** Keywords ***
Test Setup
    [Documentation]    test setup
    ...                You can define the ${TEST_SETUP} variable with a keyword for setting up all your tests.
    ...                You can define the ${TEST_15_SETUP} variable with a keyword for setting up this specific test.
    ...                If both are defined, ${TEST_15_SETUP} will be run after ${TEST_SETUP}.

    ${TEST_SETUP_VALUE} =       Get Variable Value    ${TEST_SETUP}
    ${TEST_15_SETUP_VALUE} =    Get Variable Value    ${TEST_15_SETUP}
    IF    $TEST_SETUP_VALUE is not None
        Run Keyword    ${TEST_SETUP}
    END
    IF    $TEST_15_SETUP_VALUE is not None
        Run Keyword    ${TEST_15_SETUP}
    END

Test Teardown
    [Documentation]    test teardown
    ...                You can define the ${TEST_TEARDOWN} variable with a keyword for tearing down all your tests.
    ...                You can define the ${TEST_15_TEARDOWN} variable with a keyword for tearing down this specific test.
    ...                If both are defined, ${TEST_TEARDOWN} will be run after ${TEST_15_TEARDOWN}.

    ${TEST_15_TEARDOWN_VALUE} =    Get Variable Value    ${TEST_15_TEARDOWN}
    ${TEST_TEARDOWN_VALUE} =       Get Variable Value    ${TEST_TEARDOWN}
    IF    $TEST_15_TEARDOWN_VALUE is not None
        Run Keyword    ${TEST_15_TEARDOWN}
    END
    IF    $TEST_TEARDOWN_VALUE is not None
        Run Keyword    ${TEST_TEARDOWN}
    END
