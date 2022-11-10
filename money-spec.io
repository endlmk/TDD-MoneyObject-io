#!/usr/bin/env iospec

describe(doller, Doller,
	doller("can multiply",
		five := Doller clone
		five setAmount(5)
		five times(2)
		five verify(amount == 10) 	
	)
)
