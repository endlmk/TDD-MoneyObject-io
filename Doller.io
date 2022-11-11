Doller := Object clone do(
	amount ::= nil
	times := method(multiplier,
		doller := Doller clone
		doller setAmount(amount * multiplier)
	)
	equals := method(obj,
		obj amount == amount
	)
)