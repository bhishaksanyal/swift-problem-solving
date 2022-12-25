import UIKit

// https://www.hackerrank.com/challenges/picking-numbers/problem?isFullScreen=true

func pickingNumbers(a: [Int]) -> Int {
    var maxLength: Int = 0
    var sortedArray: [Int] = a.sorted()
    
    // Sliding window approach
    var left: Int = 0
    var right: Int = 1
    
    sortedArray.append(Int.max)
    
    while right < sortedArray.count {
        if sortedArray[right] - sortedArray[left] < 2 {
            right += 1
        } else {
            // reset maxLength
            if maxLength < (right - left) {
                maxLength = right - left
            }
            
            // Move left pointer
            left += 1
            right = left + 1
        }
    }
    
    
    return maxLength
}

print(pickingNumbers(a: [1, 1, 2, 2, 3, 3, 4, 4, 5, 5, 5])) // 5
print(pickingNumbers(a: [4, 6, 5, 3, 3, 1])) // 3
print(pickingNumbers(a: [1, 2, 2, 3, 1, 2])) // 5
