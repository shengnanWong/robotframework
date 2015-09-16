*** Settings ***
Suite Setup      Run Tests    ${EMPTY}    standard_libraries/xml/parsing_with_lxml.robot
Force Tags       regression    no-ipy    no-jython    require-lxml
Resource         xml_resource.robot

*** Test Cases ***
Parse file using forwards slash as path separator
    Check Test Case    ${TESTNAME}

Parse file using system path separator
    Check Test Case    ${TESTNAME}

Parse string
    Check Test Case    ${TESTNAME}

Comments and processing instructions are removed
    Check Test Case    ${TESTNAME}

Parse invalid file
    Check Test Case    ${TESTNAME}

Parse invalid string
    Check Test Case    ${TESTNAME}

Parse non-existing file
    Check Test Case    ${TESTNAME}
