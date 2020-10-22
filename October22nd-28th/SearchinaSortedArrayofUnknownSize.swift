/*
 Question - Search in a Sorted Array of Unknown Size
 Link - > https://leetcode.com/explore/featured/card/october-leetcoding-challenge/562/week-4-october-22nd-october-28th/3503/
 */

class Solution {
  func search(_ reader: ArrayReader, _ target: Int) -> Int {
    var result = -1, leftIndex = 0, rightIndex = 1
    
    while reader.get(rightIndex) < target {
      rightIndex *= 2
    }
    
    //Perform binary search to get our target
    
    while leftIndex <= rightIndex {
      var pivot = leftIndex + (rightIndex - leftIndex)/2
      if reader.get(pivot) == target {
        result = pivot
        break
      } else if reader.get(pivot) < target {
        leftIndex = pivot + 1
      } else {
        rightIndex = pivot - 1
      }
    }
    return result
  }
}
