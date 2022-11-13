Franc := Money clone do(
	times := method(multiplier,
		Money franc(amount * multiplier)
	)
)
