Money := Object clone do(
	amount ::= nil
	equals := method(obj,
		(obj type == self type) and (obj amount == amount)
	)
)