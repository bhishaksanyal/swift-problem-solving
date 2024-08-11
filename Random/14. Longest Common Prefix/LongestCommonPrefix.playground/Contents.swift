import UIKit

/**
 Write a function to find the longest common prefix string amongst an array of strings.
 
 If there is no common prefix, return an empty string "".
 */

func longestCommonPrefix(_ strs: [String]) -> String {
    
    guard strs.isEmpty == false else { return "" }
    var smallestString = (strs.min { $0.count < $1.count })!
    
    for str in strs {
        while str.hasPrefix(smallestString) == false {
            smallestString.removeLast()
        }
    }
    
    return smallestString
}

print(longestCommonPrefix(["flower","flow","flowerer"]))
print(longestCommonPrefix(["flower","flow","flight"]))
print(longestCommonPrefix(["dog","racecar","car"]))
print(longestCommonPrefix(["doggy","dogger","doggest"]))

