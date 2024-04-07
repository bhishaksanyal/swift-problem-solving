import UIKit

func kidsWithCandies(_ candies: [Int], _ extraCandies: Int) -> [Bool] {
    
    let maxNumber = candies.max()!
    var result: [Bool] = []
    
    for candy in candies {
        result.append((maxNumber <= candy + extraCandies) ? true : false)
    }
    
    return result
}

print(kidsWithCandies([2,3,5,1,3], 3))
print(kidsWithCandies([4,2,1,1,2], 1))
print(kidsWithCandies([12,1,12], 10))
