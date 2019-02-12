Feature: Demo feature using google page

Scenario: Searchin   stext in google
Given I launch google page
When I search for "Reed Business Information, London"
Then I click search button

Scenario: Scenario Branch2
Given I launch google page
When I search for "Reed Business Information, Australia"

Scenario: Branch 1 scenario
Given I launch google page
When I search for "Reed Business Information, United States"
Then I click search button