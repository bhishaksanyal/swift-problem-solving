import UIKit
import Foundation

// My solution

//func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
//    
//    var mapper = Dictionary<Int, Int>()
//    var result = [Int]()
//    
//    for (index, num) in nums.enumerated() {
//        let diff = target - num
//        print(mapper)
//        if mapper[num] == nil {
//            mapper[diff] = index
//        } else {
//            result.append(mapper[num]!)
//            result.append(index)
//            break
//        }
//    }
//    return result
//}

// Refined

func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    
    var dict = [Int: Int]()
    
    for (index, num) in nums.enumerated() {
        if let found = dict[num] {
            return [found, index]
        } else {
            dict[target - num] = index
        }
    }
    
    return []
}

print(twoSum([2, 7, 11, 15], 9))
print(twoSum([3,2,4], 6))
print(twoSum([3,3], 6))
