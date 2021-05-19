#*** Settings ***
#Documentation     A test suite with Tests to test Alex Homepage
#...
#...               This test has a workflow that is created using keywords in
#...               the imported resource file.
#Suite Setup       Open Browser To Home Page
#Suite Teardown    Close Browser
#Library           SeleniumLibrary
#
#*** Test Cases ***
##    Set Selenium Speed    ${DELAY}
##    Set Selenium Timeout        ${DELAY}
#Test Augmented Data Catalog LINK
#    Test AUGMENTED LINK
#Test Automated Data link
#    Test AUTOMATED LINK
#Test Intelligent Business Glossary LINK
#    Test INTELLIGENT LINK
#Test Data Security link
#    Test SECURITY LINK
#Test Data Quality link
#    Test QUALITY LINK
#Test Cloud Migration Link
#    Test CLOUD LINK
#
##    Test AUTOMATED LINK
##    Open Browser To Home Page
##    Sleep  5s
##    Goo To Product
##    Sleep  5s
##    Goo To Augmented Data Link
##    Sleep  5s
##    Take text
##    Sleep  2s
#
##    Go Back
##    Sleep  5s
##    Goo To Product
##    Sleep  5s
##    Goo To Automated Data Link
##    Sleep  5s
##    Goo To Intelligent Business Link
##    Sleep  5s
##    Goo To Data Security Link
##    Sleep  5s
##    Goo To Data Quality Link
##    Sleep  5s
##    Goo To Cloud Migration Link
##    Sleep  5s
##    [Teardown]    Close Browser
#
#*** Variables ***
#${BROWSER}                      Chrome
#${DELAY}                        1
#
#${HOMEPAGE URL}                 https://alexsolutions.com.au/
#${PRODUCT LINK}                 //a[contains(text(),'Product')]
#
#${AUGMENTED LINK}               //a[@href="https://alexsolutions.com.au/product/augmented-data-catalog/"]
#${AUGMENTED TEXT}               //h1[contains(text(),'Alex Augmented Data Catalog is powered by the industry’s best machine learning.')]
#${AUGMENTED EXPECTED TEXT}      Alex Augmented Data Catalog is powered by the industry’s best machine learning.
#
#${AUTOMATED LINK}               //a[@href="https://alexsolutions.com.au/product/data-lineage/"]
#${AUTOMATED TEXT}               //h1[contains(text(),'Alex Data Lineage is the best in the business. Her')]
#${AUTOMATED EXPECTED TEXT}      Alex Data Lineage is the best in the business. Here’s why.
#
#${INTELLIGENT LINK}             //a[@href="https://alexsolutions.com.au/product/business-glossary/"]
#${INTELLIGENT TEXT}             //h1[contains(text(),'Alex Intelligent Business Glossary’s beautiful UI and rich functionality is perfect for conducting global collaboration.')]
#${INTELLIGENT EXPECTED TEXT}    Alex Intelligent Business Glossary’s beautiful UI and rich functionality is perfect for conducting global collaboration.
#
#${SECURITY LINK}                //a[@href="https://alexsolutions.com.au/product/data-security/"]
#${SECURITY TEXT}                //h1[contains(text(),'Accelerate Sensitive data discovery and compliance with Alex Data Security.')]
#${SECURITY EXPECTED TEXT}       Accelerate Sensitive data discovery and compliance with Alex Data Security.
#
#${QUALITY LINK}                 //a[@href="https://alexsolutions.com.au/product/data-quality/"]
#${QUALITY TEXT}                 //h1[contains(text(),'Your biggest decisions need the highest possible quality Data.')]
#${QUALITY EXPECTED TEXT}        Your biggest decisions need the highest possible quality Data.
#
#${CLOUD LINK}                   //a[@href="https://alexsolutions.com.au/product/cloud-migration/"]
#${CLOUD TEXT}                   //h1[contains(text(),'The Alex Platform is your enterprise’s cloud native centre of data and business truth.')]
#${CLOUD EXPECTED TEXT}          The Alex Platform is your enterprise’s cloud native centre of data and business truth.
#
#*** Keywords ***
#Open Browser To Home Page
#    Open Browser    ${HOMEPAGE URL}     ${BROWSER}
#    Maximize Browser Window
#
#Go To Link
#    [Arguments]     ${LINK}
#    CLICK LINK      ${LINK}
#
#Get String
#    [Arguments]     ${ELEMENT}
#    ${TEXT}=    get text      ${ELEMENT}
#    [return]        ${TEXT}
#
#Assert Text
#    [Arguments]     ${TEXT1}    ${TEXT2}
#    Should be equal as strings      ${TEXT1}    ${TEXT2}
#
#Go Back
#    Execute Javascript  history.back()
#
#Test AUGMENTED LINK
#    Go To Link      ${PRODUCT LINK}
#    Sleep  5s
#    Go To Link      ${AUGMENTED LINK}
#    Sleep  5s
#    ${STRING}=      Get String    ${AUGMENTED TEXT}
#    Sleep  5s
#    Assert Text     ${AUGMENTED EXPECTED TEXT}      ${STRING}
#    Sleep  5s
#    Go Back
#
#Test AUTOMATED LINK
#    Go To Link      ${PRODUCT LINK}
#    Sleep  5s
#    Go To Link      ${AUTOMATED LINK}
#    Sleep  5s
#    ${STRING}=      Get String    ${AUTOMATED TEXT}
#    Sleep  5s
#    Assert Text     ${AUTOMATED EXPECTED TEXT}       ${STRING}
#    Sleep  5s
#    Go Back
#
#
#Test INTELLIGENT LINK
#    Go To Link      ${PRODUCT LINK}
#    Sleep  5s
#    Go To Link      ${INTELLIGENT LINK}
#    Sleep  5s
#    ${STRING}=      Get String    ${INTELLIGENT TEXT}
#    Sleep  5s
#    Assert Text     ${INTELLIGENT EXPECTED TEXT}     ${STRING}
#    Sleep  5s
#    Go Back
#
#Test SECURITY LINK
#    Go To Link      ${PRODUCT LINK}
#    Sleep  5s
#    Go To Link      ${SECURITY LINK}
#    Sleep  5s
#    ${STRING}=      Get String    ${SECURITY TEXT}
#    Sleep  5s
#    Assert Text     ${SECURITY EXPECTED TEXT}     ${STRING}
#    Sleep  5s
#    Go Back
#
#Test QUALITY LINK
#    Go To Link      ${PRODUCT LINK}
#    Sleep  5s
#    Go To Link      ${QUALITY LINK}
#    Sleep  5s
#    ${STRING}=      Get String    ${QUALITY TEXT}
#    Sleep  5s
#    Assert Text     ${QUALITY EXPECTED TEXT}     ${STRING}
#    Sleep  5s
#    Go Back
#
#Test CLOUD LINK
#    Go To Link      ${PRODUCT LINK}
#    Sleep  5s
#    Go To Link      ${CLOUD LINK}
#    Sleep  5s
#    ${STRING}=      Get String    ${CLOUD TEXT}
#    Sleep  5s
#    Assert Text     ${CLOUD EXPECTED TEXT}     ${STRING}
#    Sleep  5s
#    Go Back
#
#
#
##    Go To Augmented Data Link
##    Sleep  5s
##    Take text
##    Go Back
#
##Test AUTOMATED LINK
##    Go To Product
##    Sleep  5s
##    Go To Augmented Data Link
##    Sleep  5s
##    ${RES}        get text      ${QUALITY TEXT}
##    Should be equal as strings        ${AUTOMATED EXPECTED TEXT}      ${RES}
##    Go Back
#
#
##Goo To Automated Data Link
##    CLICK LINK      ${AUTOMATED LINK}
##
##Goo To Intelligent Business Link
##    CLICK LINK      ${INTELLIGENT LINK}
##
##Goo To Data Security Link
##    CLICK LINK      ${SECURITY LINK}
##
##Goo To Data Quality Link
##    CLICK LINK      ${QUALITY LINK}
##
##Goo To Cloud Migration Link
##    CLICK LINK      ${CLOUD LINK}
#
#
#
#
##
##Go To Product
##    CLICK LINK      ${PRODUCT LINK}
##
##Go To Augmented Data Link
##    CLICK LINK      ${AUGMENTED LINK}
##
##Go To AUTOMATED Data Link
##    CLICK LINK      ${AUTOMATED LINK}
##
##Take text
##    ${RES}=    get text      ${AUGMENTED TEXT}
##    Log       ${RES}
##    Log       ${AUGMENTED EXPECTED TEXT}
###    Should be equal         ${AUGMENTED EXPECTED TEXT}      ${RES}
##    Should be equal as strings        ${AUGMENTED EXPECTED TEXT}      ${RES}