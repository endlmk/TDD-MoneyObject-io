#!/usr/bin/env iospec

describe(doller, Doller,
	doller("can multiply",
		five := Doller clone setAmount(5)
		product := five times(2)
		product verify(amount == 10)
		product := five times(3)
		product verify(amount == 15)
	)
	doller("has eqaulity",
		Doller clone setAmount(5) verify(equals (Doller clone setAmount(5)))
		Doller clone setAmount(5) verify(equals (Doller clone setAmount(6)) not)
	)
)
