The solution is to use `take` before sorting, restricting the operation to a finite portion of the list:

```haskell
import Data.List (sort)

main :: IO ()
main = do
  let xs = [1..]
  let ys = sort (take 10 xs) -- Sort only the first 10 elements
  print ys
```

This approach ensures that `sort` only operates on a finite list, preventing the infinite loop.  Alternatively, functions like `take` can be combined with other functions to perform operations on a finite prefix of an infinite stream without explicitly constructing the entire intermediate list in memory.