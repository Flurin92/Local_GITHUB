*** Settings ***
Library  Collections
Test Setup        Test Setup 
#Test Teardown     Test Teardown 



*** Variables ***

${Subfunction}=            3E  

${Pos_Resp_Adder}=         40
${Suppressed_Adder}=       80
    
@{Supported_Session_List}=  01    03


*** Test Cases ***
Trigger DTC
    @{all_Sessions} =    Create List    01    02    03
    Remove Values From List    ${all_Sessions}  @{Supported_Session_List}
    log  ${all_Sessions} 
 
*** Keywords ***

Test Setup
    Set Log Level    TRACE

