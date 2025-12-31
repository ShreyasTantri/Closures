Swift Closures

Overview
Closures are anonymous, self-contained blocks of code that can be stored, passed, and executed later.

How to define (short)
- Full syntax with types and return
- Inferred types, implicit return
- Shorthand args ($0, $1) and trailing-closure

Common uses
- Callbacks and completion handlers
- Collection transforms: map, filter, sorted
- Factory functions that return configured behavior

Escaping vs Non-escaping
- Non-escaping: runs before the function returns.
- Escaping (@escaping): stored or executed after the function returns (async, stored callbacks).

Notes
- Closures capture surrounding values.
- Avoid retain cycles when capturing self (use [weak self]/[unowned self]).

Summary
Closures make Swift code concise and flexible—just mind capture and escaping rules.
