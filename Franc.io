Franc := Money clone do(
	amount ::= nil
	times := method(multiplier,
		Franc clone setAmount(amount * multiplier)
	)
)
