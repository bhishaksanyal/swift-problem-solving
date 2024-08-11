import UIKit

/**
 Given an integer x, return true if x is a
 palindrome
 , and false otherwise.
 */

func isPallindrome(_ num: Int) -> Bool {
    
    // Edge case for negetive numbers
    if num < 0 { return false }
    
    var number = num
    var reverse: Int = 0
    while (number != 0) {
        reverse = reverse * 10
        reverse = reverse + number % 10
        number = number / 10
    }
    
    return num == reverse ? true : false
}

print(isPallindrome(1234)) // false
print(isPallindrome(121)) // true
print(isPallindrome(-121)) // false
print(isPallindrome(10)) // false
print(isPallindrome(1234321)) // true
