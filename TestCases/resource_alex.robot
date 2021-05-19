*** Settings ***
Documentation     A resource file with reusable keywords and variables.
Library           AutoRecorder      mode=suite
Library           SeleniumLibrary


*** Variables ***
${BROWSER}                      Chrome
${DELAY}                        1

${HOMEPAGE URL}                 https://alexsolutions.com.au/
${PRODUCT LINK}                 //a[contains(text(),'Product')]

${AUGMENTED LINK}               //a[@href="https://alexsolutions.com.au/product/augmented-data-catalog/"]
${AUGMENTED TEXT}               //h1[contains(text(),'Alex Augmented Data Catalog is powered by the industry’s best machine learning.')]
${AUGMENTED EXPECTED TEXT}      Alex Augmented Data Catalog is powered by the industry’s best machine learning.

${AUTOMATED LINK}               //a[@href="https://alexsolutions.com.au/product/data-lineage/"]
${AUTOMATED TEXT}               //h1[contains(text(),'Alex Data Lineage is the best in the business. Her')]
${AUTOMATED EXPECTED TEXT}      Alex Data Lineage is the best in the business. Here’s why.

${INTELLIGENT LINK}             //a[@href="https://alexsolutions.com.au/product/business-glossary/"]
${INTELLIGENT TEXT}             //h1[contains(text(),'Alex Intelligent Business Glossary’s beautiful UI and rich functionality is perfect for conducting global collaboration.')]
${INTELLIGENT EXPECTED TEXT}    Alex Intelligent Business Glossary’s beautiful UI and rich functionality is perfect for conducting global collaboration.

${SECURITY LINK}                //a[@href="https://alexsolutions.com.au/product/data-security/"]
${SECURITY TEXT}                //h1[contains(text(),'Accelerate Sensitive data discovery and compliance with Alex Data Security.')]
${SECURITY EXPECTED TEXT}       Accelerate Sensitive data discovery and compliance with Alex Data Security.

${QUALITY LINK}                 //a[@href="https://alexsolutions.com.au/product/data-quality/"]
${QUALITY TEXT}                 //h1[contains(text(),'Your biggest decisions need the highest possible quality Data.')]
${QUALITY EXPECTED TEXT}        Your biggest decisions need the highest possible quality Data.

${CLOUD LINK}                   //a[@href="https://alexsolutions.com.au/product/cloud-migration/"]
${CLOUD TEXT}                   //h1[contains(text(),'The Alex Platform is your enterprise’s cloud native centre of data and business truth.')]
${CLOUD EXPECTED TEXT}          The Alex Platform is your enterprise’s cloud native centre of data and business truth.

*** Keywords ***
Open Browser To Home Page
    Open Browser    ${HOMEPAGE URL}     ${BROWSER}
    Maximize Browser Window

Go To Link
    [Arguments]     ${LINK}
    CLICK LINK      ${LINK}

Get String
    [Arguments]     ${ELEMENT}
    ${TEXT}=    get text      ${ELEMENT}
    [return]        ${TEXT}

Assert Text
    [Arguments]     ${TEXT1}    ${TEXT2}
    Should be equal as strings      ${TEXT1}    ${TEXT2}

Go Back
    Execute Javascript  history.back()

Test AUGMENTED LINK
    Go To Link      ${PRODUCT LINK}
    Sleep  5s
    Go To Link      ${AUGMENTED LINK}
    Sleep  5s
    ${STRING}=      Get String    ${AUGMENTED TEXT}
    Sleep  5s
    Assert Text     ${AUGMENTED EXPECTED TEXT}      ${STRING}
    Sleep  5s


Test AUTOMATED LINK
    Go To Link      ${PRODUCT LINK}
    Sleep  5s
    Go To Link      ${AUTOMATED LINK}
    Sleep  5s
    ${STRING}=      Get String    ${AUTOMATED TEXT}
    Sleep  5s
    Assert Text     ${AUTOMATED EXPECTED TEXT}       ${STRING}
    Sleep  5s



Test INTELLIGENT LINK
    Go To Link      ${PRODUCT LINK}
    Sleep  5s
    Go To Link      ${INTELLIGENT LINK}
    Sleep  5s
    ${STRING}=      Get String    ${INTELLIGENT TEXT}
    Sleep  5s
    Assert Text     ${INTELLIGENT EXPECTED TEXT}     ${STRING}
    Sleep  5s


Test SECURITY LINK
    Go To Link      ${PRODUCT LINK}
    Sleep  5s
    Go To Link      ${SECURITY LINK}
    Sleep  5s
    ${STRING}=      Get String    ${SECURITY TEXT}
    Sleep  5s
    Assert Text     ${SECURITY EXPECTED TEXT}     ${STRING}
    Sleep  5s


Test QUALITY LINK
    Go To Link      ${PRODUCT LINK}
    Sleep  5s
    Go To Link      ${QUALITY LINK}
    Sleep  5s
    ${STRING}=      Get String    ${QUALITY TEXT}
    Sleep  5s
    Assert Text     ${QUALITY EXPECTED TEXT}     ${STRING}
    Sleep  5s


Test CLOUD LINK
    Go To Link      ${PRODUCT LINK}
    Sleep  5s
    Go To Link      ${CLOUD LINK}
    Sleep  5s
    ${STRING}=      Get String    ${CLOUD TEXT}
    Sleep  5s
    Assert Text     ${CLOUD EXPECTED TEXT}     ${STRING}
    Sleep  5s





