Feature: See Clean Code book price
    I want to know the price of this book in amazon.com.br

    Scenario: Search for the book
        Given the user acesses 'https://amazon.com.br'
        When i click in the text field typing 'Código Limpo'
        And I click in Search
        Then i'll be redirected for results page and find my book 'Código Limpo'
