import UIKit

func mergeAlternately(_ word1: String, _ word2: String) -> String {
    
    var result = ""
    var wordA = word1
    var wordB = word2
    
    let maxIteration = max(word1.count, word2.count)
    var currentIteration = 0
    
    while currentIteration < maxIteration {
        if !wordA.isEmpty {
            result.append(wordA.removeFirst())
        }
        if !wordB.isEmpty {
            result.append(wordB.removeFirst())
        }
        
        currentIteration += 1
    }
    
    return result
}

print(mergeAlternately("abc", "pqr"))
print(mergeAlternately("ab", "pqrs"))
print(mergeAlternately("abcd", "pq"))
