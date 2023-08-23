Feature: Create Account API



#Scenario 1 : The account creation api is called with a cin

When the account creation api is called with a cin

Then a new customer account is created with the given cin as unique identifier and returned by the api





#Scenario 2: The account creation api is called with an existing cin

Given the account creation api is called with a cin

When an account is already existing with the same given cin

Then the api throws an exception