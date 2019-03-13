## Technical Test

Using the language of my choice, I was tasked with creating a banking application whereby the user could interact with the code via a REPL. This was an opportunity to show my TDD and OO design processes.

### Acceptance criteria
* Given a client makes a deposit of 1000 on 10-01-2012
* And a deposit of 2000 on 13-01-2012
* And a withdrawal of 500 on 14-01-2012
* When she prints her bank statement
* Then she would see the following:

```
date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00
```

### User Stories:

Below are user stories based on the acceptance criteria, these are used as the specifications for the program.

```
As a customer
I would like to see the balance
Of my bank account
```

```
As a customer
I would like to be able to deposit money
Into my bank account
```

```
As a customer
I would like to be able to withdraw money
From my bank account
```

```
As a customer
I would like to be able to print my bank statement
Showing debits/credits and the date the transaction occurred - it should be formatted as shown;

date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00
```
