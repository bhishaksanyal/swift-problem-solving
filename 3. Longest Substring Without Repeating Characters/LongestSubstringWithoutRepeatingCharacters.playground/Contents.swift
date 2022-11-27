import UIKit

/**
 Given a string s, find the length of the longest
 substring
 without repeating characters.
 */

func lengthOfLongestSubstring(_ s: String) -> Int {
    var map: [Character: Int] = [:]
    var start = 0, res = 0
    for (i, c) in s.enumerated() {
        if let index = map[c], index >= start {
            start = index + 1
        }
        res = max(res, i - start + 1)
        map[c] = i
    }
    return res
}

print(lengthOfLongestSubstring("abcabcbb")) // 3
print(lengthOfLongestSubstring("bbbbb")) // 1
print(lengthOfLongestSubstring("pwwkew")) // 3
print(lengthOfLongestSubstring(" ")) // 1
print(lengthOfLongestSubstring("au")) // 2
print(lengthOfLongestSubstring("dvdf")) // 2
