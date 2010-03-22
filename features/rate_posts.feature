Feature: Rate Posts
  In order to guide others to interesting posts
  As a discriminating reader
  I want my opinion of a post to affect its rating

  Scenario: I view the rated posts
    Given the following posts:
      |title  |body  |published|rating|
      |title 1|body 1|false    |0     |
      |title 2|body 2|true     |-1    |
      |title 3|body 3|false    |5     |
      |title 4|body 4|true     |9     |

    When I am on the posts page
    Then I should see a rating of 5 on the 3rd post

