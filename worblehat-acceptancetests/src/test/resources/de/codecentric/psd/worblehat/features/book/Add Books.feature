Feature: Adding a new book to the library

    Scenario Outline: Adding various books

        Given an empty library

        When a librarian adds a random book and the "<property>" of that book is "<value>"

        Then the booklist shows that book with "<property>" as "<value>"

        Examples:
            | property | value           |
            | title    | Sourcery        |
            | author   | Terry Pratchett |
            | year     | 1989            |
            | isbn     | 123456789X      |

    Scenario: Adding books with special characters

      Given an empty library

      When a librarian adds a random book and the "title" of that book is "  X  "

      Then the booklist shows that book with "title" as "  X  "


    Scenario Outline: There can be multiple copies of the same book with the same ISBN

        Given an empty library

        When a librarian adds a book with "<title>", "<author>", <edition>, "<year>" and "<isbn>"
        And a librarian adds another book with "<title2>", "<author2>", <edition2>, "<year>" and "<isbn2>"

        Then the booklist contains a book with "<title>", "<author>", "<year>", <edition> and "<isbn>"
        And the library contains <nr> copies of the book with "<isbn>"

        Examples:

          | title    | author          | edition | year | isbn       | author2                | title2               | isbn2      | edition2 | nr |
          | Sourcery | Terry Pratchett | 1       | 1989 | 0552131075 | Terry Pratchett        | Sourcery             | 0552131075 | 1        | 2  |
          | Sourcery | Terry Pratchett | 1       | 1989 | 0552131075 | Terry Pratchett        | Sourcery             | 0552131075 | 2        | 1  |
          | Sourcery | Terry Pratchett | 1       | 1989 | 0552131075 | XX_DIFFERENT_AUTHOR_XX | Sourcery             | 0552131075 | 1        | 1  |
          | Sourcery | Terry Pratchett | 1       | 1989 | 0552131075 | Terry Pratchett        | XX_DIFERENT_TITLE_XX | 0552131075 | 1        | 1  |






