@predefined
Feature: Smoke steps

  @predefined1
  Scenario: Predefined steps for Google
    Given I open url "https://google.com"
    Then I should see page title as "Google"
    Then element with xpath "//input[@name='q']" should be present
    When I type "Behavior Driven Development" into element with xpath "//input[@name='q']"
    Then I click on element using JavaScript with xpath "(//input[@name='btnK'])[1]"
    Then I wait for element with xpath "//*[@id='res']" to be present
    Then element with xpath "//*[@id='res']" should contain text "Cucumber"

  @predefined2
  Scenario: Username field verfication
    Given I open url "https://skryabin.com/market/quote.html"
    When I should see page title as "Get a Quote"
    Given I type "A" into element with xpath "//input[@name='username']"
    Then I click on element with xpath "//button[@id='formSubmit']"
    Then element with xpath "//label[@id='username-error']" should be displayed
    Then I wait for 2 sec
    Then I clear element with xpath "//input[@name='username']"
    Given I type "AB" into element with xpath "//input[@name='username']"
    Then I wait for 2 sec
    