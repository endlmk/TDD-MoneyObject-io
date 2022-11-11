#!/usr/bin/env iospec

describe(doller, Doller,
	doller("can multiply",
		five := Doller clone setAmount(5)
		five times(2) verify(equals (Doller clone setAmount(10)))
		five times(3) verify(equals (Doller clone setAmount(15)))
	)
	doller("has eqaulity",
		Doller clone setAmount(5) verify(equals (Doller clone setAmount(5)))
		Doller clone setAmount(5) verify(equals (Doller clone setAmount(6)) not)
	)
)

describe(franc, Franc,
	franc("can multiply",
		five := Franc clone setAmount(5)
		five times(2) verify(equals (Franc clone setAmount(10)))
		five times(3) verify(equals (Franc clone setAmount(15)))
	)
)
