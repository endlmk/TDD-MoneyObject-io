Doller := Object clone do(
	amount ::= nil
	times := method(multiplier,
		amount = amount * multiplier
	)
)