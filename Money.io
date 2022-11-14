Money := Object clone do(
	amount ::= nil
	currency ::= nil
	equals := method(obj,
		(obj currency == self currency) and (obj amount == amount)
	)
	times := method(multiplier,
		Money clone setAmount(amount * multiplier) setCurrency(currency)
	)
	plus := method(addend,
		Sum clone setAugend(self) setAddend(addend)
	)
    reduce := method(to,
        self
    )
	dollar := method(amount,
		Money clone setAmount(amount) setCurrency("USD")
	)
	franc := method(amount,
		Money clone setAmount(amount) setCurrency("CHF")
	)
)