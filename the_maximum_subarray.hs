{-

Solution for:
https://www.hackerrank.com/challenges/maxsubarray/problem

We define subsequence as any subset of an array. We define a subarray as a contiguous subsequence in an array.

Given an array, find the maximum possible sum among:

all nonempty subarrays.
all nonempty subsequences.
Print the two values as space-separated integers on one line.

-}

solve :: [Int] -> String
solve xs = ""

main :: IO ()
main = interact $ solve . map read . words
