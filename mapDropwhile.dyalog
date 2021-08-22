      ⍝ Remove leading spaces in each string
      strings ← '  hello' '   there' ' general kenobi'
      {⍵/⍨~∧\⍵∊' '}¨strings
┌─────┬─────┬──────────────┐
│hello│there│general kenobi│
└─────┴─────┴──────────────┘
      ⍝ Create the bit mask for where spaces are located in the strings
      {⍵∊' '}¨strings
┌─────────────┬───────────────┬─────────────────────────────┐
│1 1 0 0 0 0 0│1 1 1 0 0 0 0 0│1 0 0 0 0 0 0 0 1 0 0 0 0 0 0│
└─────────────┴───────────────┴─────────────────────────────┘
      ⍝ Scan through it with AND to get only initial ones
      {∧\⍵∊' '}¨strings
┌─────────────┬───────────────┬─────────────────────────────┐
│1 1 0 0 0 0 0│1 1 1 0 0 0 0 0│1 0 0 0 0 0 0 0 0 0 0 0 0 0 0│
└─────────────┴───────────────┴─────────────────────────────┘
      ⍝ Negate that pattern, getting everything that is not an initial space
      {~∧\⍵∊' '}¨strings
┌─────────────┬───────────────┬─────────────────────────────┐
│0 0 1 1 1 1 1│0 0 0 1 1 1 1 1│0 1 1 1 1 1 1 1 1 1 1 1 1 1 1│
└─────────────┴───────────────┴─────────────────────────────┘

      ⍝ Interlude: ⍨
      ⍝ Normal order of /
      1 0 1 1 / 'abcd'
acd
      ⍝ Flipped order; right argument becomes left and vice versa
      'abcd' /⍨ 1 0 1 1
acd

      ⍝ Use the negated bitmask to get all elements corresponding to ones
      ⍝ This requires us to pass the bit mask as the left argument to /
      ⍝ Which is why we need to use ⍨
      ⍝ The expression we will execute is BitMask / String
      {⍵/⍨~∧\⍵∊' '}¨strings
┌─────┬─────┬──────────────┐
│hello│there│general kenobi│
└─────┴─────┴──────────────┘

