*** Settings ***
Documentation    bdd_delete_server
Metadata         ID                           18
Metadata         Automation priority          null
Metadata         Test case importance         Low
Resource         squash_resources.resource
Test Setup       Test Setup
Test Teardown    Test Teardown


*** Test Cases ***
bdd_delete_server
    [Documentation]    bdd_delete_server

    Given I will delete the server
    When I delete the server
    Then the URL should be empty


*** Keywords ***
Test Setup
    [Documentation]    test setup
    ...                You can define the ${TEST_SETUP} variable with a keyword for setting up all your tests.
    ...                You can define the ${TEST_18_SETUP} variable with a keyword for setting up this specific test.
    ...                If both are defined, ${TEST_18_SETUP} will be run after ${TEST_SETUP}.

    ${TEST_SETUP_VALUE} =       Get Variable Value    ${TEST_SETUP}
    ${TEST_18_SETUP_VALUE} =    Get Variable Value    ${TEST_18_SETUP}
    IF    $TEST_SETUP_VALUE is not None
        Run Keyword    ${TEST_SETUP}
    END
    IF    $TEST_18_SETUP_VALUE is not None
        Run Keyword    ${TEST_18_SETUP}
    END

Test Teardown
    [Documentation]    test teardown
    ...                You can define the ${TEST_TEARDOWN} variable with a keyword for tearing down all your tests.
    ...                You can define the ${TEST_18_TEARDOWN} variable with a keyword for tearing down this specific test.
    ...                If both are defined, ${TEST_TEARDOWN} will be run after ${TEST_18_TEARDOWN}.

    ${TEST_18_TEARDOWN_VALUE} =    Get Variable Value    ${TEST_18_TEARDOWN}
    ${TEST_TEARDOWN_VALUE} =       Get Variable Value    ${TEST_TEARDOWN}
    IF    $TEST_18_TEARDOWN_VALUE is not None
        Run Keyword    ${TEST_18_TEARDOWN}
    END
    IF    $TEST_TEARDOWN_VALUE is not None
        Run Keyword    ${TEST_TEARDOWN}
    END
