*** Settings ***
Documentation     A test suite with Tests to test Alex Homepage
...
...               This test has a workflow that is created using keywords in
...               the imported resource file.

Library           SeleniumLibrary

*** Test Cases ***
Test Homepage
    Open Browser To Home Page
    Sleep  5s
    Goo To Product
    Sleep  5s
    Goo To Augmented Data Link
    Sleep  5s
    Take text
    Sleep  2s

#    Go Back
#    Sleep  5s
#    Goo To Product
#    Sleep  5s
#    Goo To Automated Data Link
#    Sleep  5s
#    Goo To Intelligent Business Link
#    Sleep  5s
#    Goo To Data Security Link
#    Sleep  5s
#    Goo To Data Quality Link
#    Sleep  5s
#    Goo To Cloud Migration Link
#    Sleep  5s
    [Teardown]    Close Browser

*** Variables ***
${BROWSER}              Chrome
${HOMEPAGE URL}         https://alexsolutions.com.au/
${PRODUCT LINK}         //a[contains(text(),'Product')]
${AUGMENTED LINK}       //a[@href="https://alexsolutions.com.au/product/augmented-data-catalog/"]
${AUGMENTED TEXT}       //h1[contains(text(),'Alex Augmented Data Catalog is powered by the indu')]
#${AUTOMATED LINK}      //a[@href="https://alexsolutions.com.au/product/data-lineage/"]
#${AUTOMATED TEXT}    //h1[contains(text(),'Alex Intelligent Business Glossary’s beautiful UI ')]
#${INTELLIGENT LINK}    //a[@href="https://alexsolutions.com.au/product/business-glossary/"]
#${INTELLIGENT TEXT}    //h1[contains(text(),'Alex Intelligent Business Glossary’s beautiful UI ')]
#${SECURITY LINK}       //a[@href="https://alexsolutions.com.au/product/data-security/"]
#${QUALITY LINK}        //a[@href="https://alexsolutions.com.au/product/data-quality/"]
#${CLOUD LINK}          //a[@href="https://alexsolutions.com.au/product/cloud-migration/"]

*** Keywords ***
Open Browser To Home Page
    Open Browser    ${HOMEPAGE URL}     ${BROWSER}
    Maximize Browser Window

Goo To Product
    CLICK LINK      ${PRODUCT LINK}

Goo To Augmented Data Link
    CLICK LINK      ${AUGMENTED LINK}

Take text
    Log   get text      ${AUGMENTED TEXT}



#Goo To Automated Data Link
#    CLICK LINK      ${AUTOMATED LINK}
#
#Goo To Intelligent Business Link
#    CLICK LINK      ${INTELLIGENT LINK}
#
#Goo To Data Security Link
#    CLICK LINK      ${SECURITY LINK}
#
#Goo To Data Quality Link
#    CLICK LINK      ${QUALITY LINK}
#
#Goo To Cloud Migration Link
#    CLICK LINK      ${CLOUD LINK}

Go Back
    Execute Javascript  history.back()
