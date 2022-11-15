Sum := Object clone do(
    augend ::= nil
    addend ::= nil
    reduce := method(bank, to,
        sumAmount := augend reduce(bank, to) amount + addend reduce(bank, to) amount
        Money clone setAmount(sumAmount) setCurrency(to)
    )
)