Feature: Perform several searches on shutterstock mobi 

Scenario: Verify search returns results 
 Given I am on the mobi site 
 When I enter each "cat, dog, 5, fire" and search individually 
 Then I verify results page 
