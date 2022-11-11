Doller := Object clone do(
	amount ::= nil
	times := method(multiplier,
		Doller clone setAmount(amount * multiplier)
	)
	equals := method(obj,
		(obj type == "Doller") and (obj amount == amount)
	)
)
