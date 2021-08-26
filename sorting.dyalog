      v ← 'hello there'
      ⍝ Sorting an array can be done with indexing & sorted indices
      v[⍋v]
 eeehhllort
 
      ⍝ ⍋v returns the indices of v if they were in sorted ascending order 
      ⍋v
6 2 9 11 1 8 3 4 5 10 7

      ⍝ v[vector of indices] returns the results for those indices
      v[1 2 4 5]
helo

      ⍝ We can then ask for v but with the sorted indices
      v[⍋v]
 eeehhllort
