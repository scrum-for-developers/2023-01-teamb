Feature: Testing for basic validation when adding new books

  Scenario Outline: Providing invalid input data for new books

    Given an empty library

    When a librarian adds a book with "<title>", "<author>", <edition>, "<year>" and "<isbn>"

    Then the page contains error message for field "<field>" with the text "<errorMessage>"
    And The library contains no books

    Examples:

      | isbn          | author          | title    | edition | year | field | errorMessage                   |
      | 0XXXXXXXX5    | Terry Pratchett | Sourcery | 1       | 1989 | isbn  | Please enter a valid ISBN      |
      | 0552131075    | Terry Pratchett | Sourcery | 1       | 1    | year  | Please enter a four digit year |
      | 9780385533224 | Terry Pratchett | Sourcery | 1       | 1989 | isbn  | Please enter a valid ISBN      |
