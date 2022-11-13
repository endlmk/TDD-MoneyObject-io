#!/usr/bin/env iospec

describe(money, Money,
	money("has eqaulity",
		Money dollar(5) verify(equals(Money dollar(5)))
		Money dollar(5) verify(equals(Money dollar(6)) not)
		Money franc(5) verify(equals(Money franc(5)))
		Money franc(5) verify(equals(Money franc(6)) not)
		Money franc(5) verify(equals(Money dollar(5)) not)
	)
)

describe(dollar, Dollar,
	dollar("can multiply",
		five := Money dollar(5)
		five times(2) verify(equals (Money dollar(10)))
		five times(3) verify(equals (Money dollar(15)))
	)
)

describe(franc, Franc,
	franc("can multiply",
		five := Money franc(5)
		five times(2) verify(equals(Money franc(10)))
		five times(3) verify(equals(Money franc(15)))
	)
)
