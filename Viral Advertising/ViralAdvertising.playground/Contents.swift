import UIKit
import Foundation

/**
 HackerLand Enterprise is adopting a new viral advertising strategy. When they launch a new product, they advertise it to exactly  people on social media.

 On the first day, half of those  people (i.e., ) like the advertisement and each shares it with  of their friends. At the beginning of the second day,  people receive the advertisement.

 Each day,  of the recipients like the advertisement and will share it with  friends on the following day. Assuming nobody receives the advertisement twice, determine how many people have liked the ad by the end of a given day, beginning with launch day as day .

 Example
 n = 5

 Day Shared Liked Cumulative
 1      5     2       2
 2      6     3       5
 3      9     4       9
 4     12     6      15
 5     18     9      24
 The progression is shown above. The cumulative number of likes on the  day is .

 */


func viralAdvertising(n: Int) -> Int {
    var cumulativeLikes: Double = 0.0
    var shared: Double = 5.0
    var liked: Double = 0.0
    var dayCounter = 1
    
    while dayCounter <= n {
        liked = floor(shared/2)
        cumulativeLikes += liked
        shared = liked * 3.0
        dayCounter += 1
    }
    
    
    return Int(cumulativeLikes)
}

print(viralAdvertising(n: 1))
print(viralAdvertising(n: 2))
print(viralAdvertising(n: 3))
print(viralAdvertising(n: 4))
print(viralAdvertising(n: 5))
print(viralAdvertising(n: 6))
print(viralAdvertising(n: 7))
print(viralAdvertising(n: 8))
