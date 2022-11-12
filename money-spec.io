#!/usr/bin/env iospec

describe(money, Money,
	money("has eqaulity",
		Doller clone setAmount(5) verify(equals(Doller clone setAmount(5)))
		Doller clone setAmount(5) verify(equals(Doller clone setAmount(6)) not)
		Franc clone setAmount(5) verify(equals(Franc clone setAmount(5)))
		Franc clone setAmount(5) verify(equals(Franc clone setAmount(6)) not)
		Franc clone setAmount(5) verify(equals(Doller clone setAmount(5)) not)
	)
)

describe(doller, Doller,
	doller("can multiply",
		five := Doller clone setAmount(5)
		five times(2) verify(equals (Doller clone setAmount(10)))
		five times(3) verify(equals (Doller clone setAmount(15)))
	)
)

describe(franc, Franc,
	franc("can multiply",
		five := Franc clone setAmount(5)
		five times(2) verify(equals(Franc clone setAmount(10)))
		five times(3) verify(equals(Franc clone setAmount(15)))
	)
)
