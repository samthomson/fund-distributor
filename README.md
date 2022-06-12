# fund-distributor

A contract that receives and distributes funds based on the amount previously received per address. eg two people - A & B - deposit 1 and 3 eth respectively gaining a 25% and 75% stake, funds seeks to distribute 5 eth, therefore 1.25 Ξ and 3.75 Ξ. but then someone - C - deposits 2 eth, while A adds another eth. making the stakes: A - 3/8 - 37.5%, B - 3/8 - 37.5%, C - 2/8 - 25%
It will track stakes relative to the total amount staked of all time, not to the current holdings (eg minus previous distributions).


callable functions:
- receive funds - and when it does it stores the receiver and the amount - the the receiver already exists, their deposit is incremented by the received amount 
- distribute funds - distributes an amount across stakers (based on their relative stake). should only be callable by the contract owner.

internal functions
- calculate the amount of relative stake of each depositor to the total amount