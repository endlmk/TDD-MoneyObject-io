Franc := Object clone do(
	amount ::= nil
	times := method(multiplier,
		Franc clone setAmount(amount * multiplier)
	)
	equals := method(obj,
		(obj type == "Franc") and (obj amount == amount)
	)
)
