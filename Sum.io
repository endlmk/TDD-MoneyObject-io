Sum := Object clone do(
    augend ::= nil
    addend ::= nil
    reduce := method(bank, to,
        sumAmount := augend amount + addend amount 
        Money clone setAmount(sumAmount) setCurrency(to)
    )
)