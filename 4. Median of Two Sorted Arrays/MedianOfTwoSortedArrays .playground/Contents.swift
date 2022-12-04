import UIKit

/**
 Given two sorted arrays nums1 and nums2 of size m and n respectively, return the median of the two sorted arrays.
 
 The overall run time complexity should be O(log (m+n)).
 */

func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
    var median: Double = 0.0
    
    var mergedArray = nums1 + nums2
    mergedArray = mergedArray.sorted()
    
    if mergedArray.count % 2 == 0 {
        var medianIndex: Int = mergedArray.count / 2
        median = (Double(mergedArray[medianIndex]) + Double(mergedArray[medianIndex - 1])) / 2
    } else {
        var medianIndex: Double = floor(Double(mergedArray.count) / 2)
        median = Double(mergedArray[Int(medianIndex)])
    }
    
    return median
}

print(findMedianSortedArrays([1,3], [2]))
print(findMedianSortedArrays([1,2], [3,4]))
