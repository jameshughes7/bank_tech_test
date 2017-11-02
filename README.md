# Bank Tech Test

Approach
---
Attempted to create 4 separate classes so as to give each class its own responsibility.
- Account class understands how to update the balance of the account
- Transaction class understands how to store a log of transactions
- Statement class understands how to print transactions
- BankInterface class understands how to interact with the other accounts
- BankInterface class can access the other classes but itself cannot be accessed.

Task
----
To create a bank programme with deposit, withdrawal and print statement functionality.


```
Acceptance criteria

Given a client makes a deposit of 1000 on 10-01-2012
And a deposit of 2000 on 13-01-2012
And a withdrawal of 500 on 14-01-2012
When she prints her bank statement
Then she would see

date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00
```


## How to install
- git clone https://github.com/jameshughes7/bank_tech_test
- cd bank_tech_test
- bundle install


## To run
- open IRB
- require './lib/bank_interface'
- require './lib/account'
- bank_interface = BankInterface.new
- account = Account.new
- use the bank_interface methods to make a deposit, a withdrawal and to print statement


## Technology
- Ruby
- RSpec


## To test
- RSpec
