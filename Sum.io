Sum := Object clone do(
    augend ::= nil
    addend ::= nil
    reduce := method(to,
        sumAmount := augend amount + addend amount 
        Money clone setAmount(sumAmount) setCurrency(to)
    )
)