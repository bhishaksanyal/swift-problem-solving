import UIKit

/**
 Given two strings needle and haystack, return the index of the first occurrence of needle in haystack, or -1 if needle is not part of haystack.
 */


func strStr(_ haystack: String, _ needle: String) -> Int {
    !haystack.contains(needle) ? -1 : haystack.components(separatedBy: needle)[0].count
}


print(strStr("sadbutsad", "sad"))
print(strStr("butsadsadbutbutbutsad", "sad"))
