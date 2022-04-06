*** Settings ***
Library     SeleniumLibrary
*** Settings ***
Library     OperatingSystem

*** Variables ***
${url}     https://robotframework.org/
${browser}      chrome
${url1}     https://www.github.com/
${text}        im javeed
${PATH}         ${Python}//D:/Python/Robot/automation//example.txt
${Valid_Username}   id:login_field      javeedshaik7852@gmail.com
${Valid_password}   id:password     javeedsk9700
*** Test Case ***
Example
    Create File          ${PATH}
    File Should Exist    ${PATH}
    Copy File            ${PATH}    ~/file.txt
Capturing_Links
    open browser    ${url}      ${browser}
    maximize browser window
    ${AllLinksCount}=   get element count       xpath://a
    log to console  ${AllLinksCount}

    @{LinkItems}    create list
    log to console    ${text}

     FOR   ${i}    IN RANGE     1   ${AllLinksCount}
       ${LinkText}=    get text  xpath:(//a)[${i}]
       log to console  ${LinkText}


       END
     close browser
github_Valid_Login
    open browser    ${url1}     ${browser}
    maximize browser window
    click element  xpath:/html/body/div[1]/header/div/div[2]/div[2]/div[2]/a
    input text      ${Valid_username}
    input text      ${Valid_password}
    click button    name:commit
    input text      name:q      javeedshaik7852
    click element       xpath://*[@id="jump-to-suggestion-search-global"]/a/div[3]/span[2]
    click element       xpath://*[@id="js-pjax-container"]/div/div[3]/div/ul/li/div[2]/div[1]/div/a
    click element       xpath://*[@id="repo-content-pjax-container"]/div/div/div[3]/div[2]/div[1]/a[1]
#    Press Keys          ${element} CTRL+A+DELETE
    click element       xpath:/html/body/div[1]/header/div[6]/details/summary/svg
