Feature: Deposit API

#Scenario 1 : The deposit api is called with an account identifier and an amount
When the deposit api is called with an existing account identifier and an amount > 0
Then the bank account balance is increased with the given amount, and the API creates a deposit transaction and returns its details


#Scenario 2: The deposit api is called with an account identifier and an amount > 10K
When the deposit api is called with an existing account identifier and an amount > 10K
Then the bank account balance is increased with the given amount, and the API creates a deposit transaction with a flag "rich = true" and returns its details