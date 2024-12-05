⍝ 1: Seems a Bit Odd To Me
    {(2×⍳⍵)-1}
⍝ 2: Making The Grade
    {100×(+/⍵≥65)÷≢⍵}
⍝ 3: What Is In a Word
    {≢(' '(≠⊆⊢)(⍵,'  '))}
⍝ 4: Keeping Things In Balance
⍝ This is a mess. I need to improve it.
     {((+/1=⍵)=(+/2=⍵))∧⍵[⍋⍵]≡⍵}{(('('=⍵)+(')'=⍵)×2)~0}
⍝ 5: Identity Crisis
    {⍵ ⍵⍴1,⍵⍴0}
    {(⍳⍵)∘.=(⍳⍵)}
⍝ same
    {∘.=⍨⍳⍵}
⍝ 6: Home On The Range
⍝ repeat until we have a scalar value result.
    {⌈/⍣≡⍵-⌊/⍣≡⍵}
⍝ OR I can just use ,
    {⌈/,⍵-⌊/,⍵}
⍝ to reduce more,
    {(⌈/-⌊/),⍵}
⍝ To deal with ⍳0 and ¯1.797693135E308, I can use
⍝ 0∊⍴⍵:0 ⋄ .. (if empty, return 0. Else, ...)
    {0∊⍴⍵:0⋄⌈/,⍵-⌊/,⍵}
⍝ 7: Float Your Boat
    {((~=∘⌈⍨¨,⍵)×(⍉,⍵))~0}
⍝ reduce left function and use mask
    {(~=∘⌈⍨(⊢×⍉)⍵)/⍵}
⍝ 8: Go Forth And Multiply
    {×/¨(⍵ ⍵ ⍴ ⍳⍵,⍵)}
