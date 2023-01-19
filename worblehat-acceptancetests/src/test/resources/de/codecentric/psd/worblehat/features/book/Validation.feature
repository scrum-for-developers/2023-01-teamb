Feature: Testing for basic validation when adding new books

  Scenario Outline: Providing invalid input data for new books

    Given an empty library

    When a librarian adds a book with "<title>", "<author>", <edition>, "<year>" and "<isbn>"

    Then the page contains error message for field "<field>" with the text "<errorMessage>"
    And The library contains no books

    Examples:

      | isbn       | author          | title    | edition | year  | field | errorMessage                                             |
      | 0XXXXXXXX5 | Terry Pratchett | Sourcery | 1       | 1989  | isbn  | Please enter a valid ISBN (ISBN10 needs to be 10 digits) |
      | 0552131075 | Terry Pratchett | Sourcery | 1       | 1     | year  | Please enter a valid Year (larger than 1000)                           |
      | 0552131075 | Terry Pratchett | Sourcery | 1       | -2000 | year  | Please enter a valid Year (larger than 1000)                           |

