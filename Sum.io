Sum := Object clone do(
    augend ::= nil
    addend ::= nil
    reduce := method(bank, to,
        sumAmount := augend reduce(bank, to) amount + addend reduce(bank, to) amount
        Money clone setAmount(sumAmount) setCurrency(to)
    )
    plus := method(addend,
        Sum clone setAugend(self) setAddend(addend)
    )
    times := method(multiplier,
        Sum clone setAugend(augend times(multiplier)) setAddend(addend times(multiplier))
    )
)