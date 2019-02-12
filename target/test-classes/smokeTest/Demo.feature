Feature: Demo feature using google page

Scenario: Searchin   stext in google
Given I launch google page
When I search for "Reed Business Information, London"
Then I click search button

<<<<<<< HEAD
Scenario: Scenario Branch2
Given I launch google page
When I search for "Reed Business Information, Australia"
=======
Scenario: Branch 1 scenario
Given I launch google page
When I search for "Reed Business Information, United States"
>>>>>>> 4960216b5ae5fa538498db31a26b9c4a2d3197ab
Then I click search button