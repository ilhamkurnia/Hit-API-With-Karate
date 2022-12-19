Feature: Get Json Place Holder

  Background: 
    * url 'https://jsonplaceholder.typicode.com/'

  Scenario: Get Place Holder
    Given path '/posts'
    When method Get
    Then status 200
    And print response
    And match response[*].id contains ['#number']
    And match response[*].title contains ['#string']
    And match response[*].body contains ['#string']
    And match response[*].userId contains ['#notnull']
