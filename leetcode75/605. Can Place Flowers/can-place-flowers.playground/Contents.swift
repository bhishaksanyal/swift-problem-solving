import UIKit

func canPlaceFlowers(_ flowerbed: [Int], _ n: Int) -> Bool {
    var flowerbed = flowerbed
    var placed = 0
    
    for (idx, plot) in flowerbed.enumerated() where plot != 1 {
        let prevIdx = (idx - 1), nextIdx = (idx + 1)
        if prevIdx >= 0, flowerbed[prevIdx] != 0 { continue }
        if nextIdx < flowerbed.count, flowerbed[nextIdx] != 0 { continue }
        flowerbed[idx] = 1
        placed += 1
    }
    return placed >= n
}

print(canPlaceFlowers([1,0,0,0,1], 1))
print(canPlaceFlowers([1,0,0,0,1], 2))
