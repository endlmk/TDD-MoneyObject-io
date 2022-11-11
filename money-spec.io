#!/usr/bin/env iospec

describe(doller, Doller,
	doller("can multiply",
		five := Doller clone
		five setAmount(5)
		product := five times(2)
		product verify(amount == 10)
		product := five times(3)
		product verify(amount == 15)
	)
)
