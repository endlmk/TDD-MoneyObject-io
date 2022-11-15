Bank := Object clone do(
    rates ::= Map clone
    reduce := method(source, to,
        source reduce(self, to)
    )
    addRate := method(from, to, rate,
        rates atPut(createKey(from, to), rate)
    )
    rate := method(from, to,
        if(from == to, 1, rates at(createKey(from, to)))
    )
    createKey := method(from, to,
        from .. "->" .. to
    )
)