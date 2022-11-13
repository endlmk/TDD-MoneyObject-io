Money := Object clone do(
	amount ::= nil
	equals := method(obj,
		(obj type == self type) and (obj amount == amount)
	)
	dollar := method(amount,
		Dollar clone setAmount(amount)
	)
	franc := method(amount,
		Franc clone setAmount(amount)
	)
)