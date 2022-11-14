Bank := Object clone do(
    reduce := method(source, to,
        source reduce(to)
    )
)