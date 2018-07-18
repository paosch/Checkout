# Checkout
A store checkout system that handles offers. The items are labelled 'A', 'B', 'C' and 'D' and priced individually. There are special offers, eg. the price of a single 'A' item is 50 pence, but when the customer buys 3 of them, they pay 130 pence instead of 150 pence.

This week’s prices are:


The checkout accepts items in any order, so that if we scan a B, an A, and another B, it recognises the two B’s and charges 45 pence for them (instead of 30 pence each). Because prices and discounts change frequently, we need to be able to pass in a set of pricing rules each time we start handling a checkout transaction.
