Doller := Money clone do(
	times := method(multiplier,
		Doller clone setAmount(amount * multiplier)
	)
)
