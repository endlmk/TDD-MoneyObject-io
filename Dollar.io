Dollar := Money clone do(
	times := method(multiplier,
		Dollar clone setAmount(amount * multiplier)
	)
)
