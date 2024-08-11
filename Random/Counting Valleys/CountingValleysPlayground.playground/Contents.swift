import UIKit

/**
 https://www.hackerrank.com/challenges/counting-valleys/problem?isFullScreen=true
 */

// Counting valleys

func countingValleys(steps: Int, path: String) -> Int {
    var altitude: Int = 0
    var valleysTraversed: Int = 0
    
    for step in path {
        if (step == "U") { altitude += 1 } else { altitude -= 1 }
        if (step == "U" && altitude == 0) { valleysTraversed += 1 }
    }
    
    return valleysTraversed
}

print(countingValleys(steps: 8, path: "UDDDUDUU"));
print(countingValleys(steps: 16, path: "UDDDUDUUUDDDUDUU"));
