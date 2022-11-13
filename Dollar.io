Dollar := Money clone do(
	times := method(multiplier,
		Money dollar(amount * multiplier)
	)
)
