import UIKit

// https://www.hackerrank.com/challenges/drawing-book/problem?isFullScreen=true

func pageCount(n: Int, p: Int) -> Int {
    let totalFlips = n/2
    var fromStart = 0
    var fromEnd = 0
    
    let p = p % 2 == 0 ? p : p - 1
    
    fromStart = p/2
    fromEnd = totalFlips - fromStart
    
    return fromStart >= fromEnd ? fromEnd : fromStart
}

print(pageCount(n: 5, p: 3))
print(pageCount(n: 6, p: 2))
print(pageCount(n: 5, p: 4))
