Feature: Withdrawal API

#Scenario 1 : The withdrawal api is called with an account identifier and an amount
When the withdrawal api is called with an existing account identifier and an amount =< bank account balance
Then the bank account balance is decreased with the given amount, and the API creates a withdrawal transaction and returns its details


#Scenario 2 : The withdrawal api is called with an account identifier and an amount
When the withdrawal api is called with an existing account identifier and an amount > daily withdrawal limit (2K)
Then the API throws an exception "The daily withdrawal limit of 2K cannot be exceeded"