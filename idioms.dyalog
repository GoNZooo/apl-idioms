⍝ {(fB¨⍵)/⍵} A - filters an array; fB is an expr -> 1/0                                                     
      {({'#'=⊃⍵}¨⍵)/⍵} '# hello' 'hello' 
┌───────┐
│# hello│
└───────┘
      ⍝ Use a boolean array to take elements
      1 0 1 0 / 'abcd'
ac
      ⍝ Take first element, compare to '#'
      '#'=⊃'# hello'
1
      ⍝ Take first element, compare to '#'
      '#'=⊃'hello'
0
      ⍝ Using "each" gives us a bit array 
      {'#'=⊃⍵}¨'# hello' 'hello'
1 0
      lines ← '# hello' 'hello'
      ⍝ "/" takes the elements from our source 
      ({'#'=⊃⍵}¨lines)/lines 
┌───────┐
│# hello│
└───────┘
      ⍝ We can put everything in a function 
      {({'#'=⊃⍵}¨⍵)/⍵} lines
┌───────┐
│# hello│
└───────┘

