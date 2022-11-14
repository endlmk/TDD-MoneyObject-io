#!/usr/bin/env iospec

describe(money, Money,
	money("has eqaulity",
		Money dollar(5) verify(equals(Money dollar(5)))
		Money dollar(5) verify(equals(Money dollar(6)) not)
		Money franc(5) verify(equals(Money dollar(5)) not)
	)
	money("has currency",
		Money dollar(1) verify(currency "USD")
		Money franc(1) verify(currency "CHF")  
	)
	money("can multiply",
		five := Money dollar(5)
		five times(2) verify(equals(Money dollar(10)))
		five times(3) verify(equals(Money dollar(15)))
	)
	money("can add",
		five := Money dollar(5)
		sum := five plus(five)
		bank := Bank clone
		reduced := bank reduce(sum, "USD")
		reduced verify(Money dollar(10))
	)
	money("plus returns sum",
		five := Money dollar(5)
		result := five plus(five)
		result verify(augend equals(five))
		result verify(addend equals(five))
	)
	money("reduce sum",
		sum := Sum clone setAugend(Money dollar(3)) setAddend(Money dollar(4))
		bank := Bank clone
		result := bank reduce(sum, "USD")
		result verify(Money dollar(7))
	)
	money("reduce money",
		bank := Bank clone
		result := bank reduce(Money dollar(1), "USD")
		result verify(Money dollar(1))
	)
)
