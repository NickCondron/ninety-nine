-- Problem 6: Find out whether a list is a palindrome

isPalindrome :: (Eq a) => [a] -> Bool
isPalindrome x = x == reverse x
