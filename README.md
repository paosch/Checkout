# Checkout
A store checkout system that handles offers. The items are labelled 'A', 'B', 'C' and 'D' and priced individually. There are special offers, eg. the price of a single 'A' item is 50 pence, but when the customer buys 3 of them, they pay 130 pence instead of 150 pence.

This week’s prices are:


| Item  | Unit Price | Special Price | 
|---|---|---|
| A | 50 | 3 for 130 | 
| B | 30 | 2 for 45 | 
| C | 20 |  |
| D | 15 |  |


The checkout accepts items in any order, so that if we scan a B, an A, and another B, it recognises the two B’s and charges 45 pence for them (instead of 30 pence each). Because prices and discounts change frequently, we need to be able to pass in a set of pricing rules each time we start handling a checkout transaction.
<br></br>

### Test coverage
![screen shot 2018-07-18 at 23 00 14](https://user-images.githubusercontent.com/33669463/42910172-65153d9a-8ade-11e8-967b-ef2469ef7985.png)
<br></br>

### IRB snippet

![screen shot 2018-07-18 at 23 14 57](https://user-images.githubusercontent.com/33669463/42910711-84d88d10-8ae0-11e8-8f64-51bc37a57fd6.png)
