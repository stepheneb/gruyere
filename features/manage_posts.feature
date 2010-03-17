Feature: Manage posts
  In order to [goal]
  [stakeholder]
  wants [behaviour]
  
  Scenario: Register new post
    Given I am on the new post page
    When I fill in "Title" with "title 1"
    And I fill in "Body" with "body 1"
    And I uncheck "Published"
    And I press "Create"
    Then I should see "title 1"
    And I should see "body 1"
    And I should see "false"

  # Rails generates Delete links that use Javascript to pop up a confirmation
  # dialog and then do a HTTP POST request (emulated DELETE request).
  #
  # Capybara must use Culerity or Selenium2 (webdriver) when pages rely on
  # Javascript events. Only Culerity supports confirmation dialogs.
  #
  # Since Culerity and Selenium2 has some overhead, Cucumber-Rails will detect 
  # the presence of Javascript behind Delete links and issue a DELETE request 
  # instead of a GET request.
  #
  # You can turn off this emulation by tagging your scenario with @selenium, 
  # @culerity, @celerity or @javascript. (See the Capybara documentation for 
  # details about those tags). If any of these tags are present, Cucumber-Rails
  # will also turn off transactions and clean the database with DatabaseCleaner 
  # after the scenario has finished. This is to prevent data from leaking into 
  # the next scenario.
  #
  # Another way to avoid Cucumber-Rails'' javascript emulation without using any
  # of the tags above is to modify your views to use <button> instead. You can
  # see how in http://github.com/jnicklas/capybara/issues#issue/12
  #
  # TODO: Verify with Rob what this means: The rack driver will detect the 
  # onclick javascript and emulate its behaviour without a real Javascript
  # interpreter.
  #
  Scenario: Delete post
    Given the following posts:
      |title|body|published|
      |title 1|body 1|false|
      |title 2|body 2|true|
      |title 3|body 3|false|
      |title 4|body 4|true|
    When I delete the 3rd post
    Then I should see the following posts:
      |Title|Body|Published|
      |title 1|body 1|false|
      |title 2|body 2|true|
      |title 4|body 4|true|
